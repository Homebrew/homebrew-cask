cask "cmake" do
  version "3.18.2"
  sha256 "45960e10378c611a00d2b9e76ab88d40e308ea066b25cae694c55732912283a3"

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
