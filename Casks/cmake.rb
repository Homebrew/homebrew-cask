cask "cmake" do
  version "3.20.0"
  sha256 "95036099bbd77afd4355331e55eaddc092e20e9d471b8ef52647c7d471c66f20"

  url "https://cmake.org/files/LatestRelease/cmake-#{version}-macos-universal.dmg"
  name "CMake"
  desc "Family of tools to build, test and package software"
  homepage "https://cmake.org/"

  livecheck do
    url "https://cmake.org/files/LatestRelease/"
    regex(/href=.*?cmake[._-]v?(\d+(?:\.\d+)+)-macos-universal\.dmg/i)
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
