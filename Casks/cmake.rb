cask "cmake" do
  version "3.18.5"
  sha256 "97c93455f27eee3441f0bc2a26bbd67e6603778a45a5adfb48a56972c1771a5a"

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

  zap trash: [
    "~/Library/Preferences/org.cmake.cmake.plist",
    "~/Library/Saved Application State/org.cmake.cmake.savedState",
  ]
end
