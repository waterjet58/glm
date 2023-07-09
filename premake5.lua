project "glm"
	kind "StaticLib"
	language "C"
	staticruntime "on"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"%{prj.name}/vendor/glm/glm/**"
	}

	includedirs
	{
		"glm/"
	}


	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
		buildoptions "/MT"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"