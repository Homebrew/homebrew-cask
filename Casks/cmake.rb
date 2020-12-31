cask "cmake" do
  version "3.19.1"
  sha256 "86badd442edd749231cc1d890dd7980b67edeadc01e9b0774ec949f1f0613ef0"

  url "https://www.cmake.org/files/v#{version.major_minor}/cmake-#{version}-Darwin-x86_64.dmg"
  name "CMake"
  homepage "https://cmake.org/"

  livecheck do
    url "https://cmake.org/files/LatestRelease/"
    regex(/href=.*?cmake[._-]v?(\d+(?:\.\d+)+)-Darwin-x86_64\.dmg/i)
  end

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
