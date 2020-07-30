cask "cmake" do
  version "3.18.0"
  sha256 "3cd3893675d345f0d5a5e8895f0f346ad2ad1688b78f9d5f6ea0a85555786204"

  url "https://www.cmake.org/files/v#{version.major_minor}/cmake-#{version}-Darwin-x86_64.dmg"
  appcast "https://cmake.org/files/LatestRelease/"
  name "CMake"
  homepage "https://cmake.org/"

  conflicts_with formula: "cmake"

  app "CMake.app"
  binary "#{appdir}/CMake.app/Contents/bin/cmake"
  binary "#{appdir}/CMake.app/Contents/bin/ccmake"
  binary "#{appdir}/CMake.app/Contents/bin/cpack"
  binary "#{appdir}/CMake.app/Contents/bin/ctest"
  binary "#{appdir}/CMake.app/Contents/bin/cmake-gui"
end
