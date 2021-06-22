cask "cmake" do
  version "3.20.5"
  sha256 "f38b4d340b76e793ac96e5f5da565558255da9f18ab0513bd390f0bd80e9ea81"

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
  manpage "#{appdir}/CMake.app/Contents/man/man1/cmake.1"
  manpage "#{appdir}/CMake.app/Contents/man/man1/ccmake.1"
  manpage "#{appdir}/CMake.app/Contents/man/man1/cpack.1"
  manpage "#{appdir}/CMake.app/Contents/man/man1/ctest.1"
  manpage "#{appdir}/CMake.app/Contents/man/man1/cmake-gui.1"
  manpage "#{appdir}/CMake.app/Contents/man/man7/cmake-buildsystem.7"
  manpage "#{appdir}/CMake.app/Contents/man/man7/cmake-commands.7"
  manpage "#{appdir}/CMake.app/Contents/man/man7/cmake-compile-features.7"
  manpage "#{appdir}/CMake.app/Contents/man/man7/cmake-developer.7"
  manpage "#{appdir}/CMake.app/Contents/man/man7/cmake-env-variables.7"
  manpage "#{appdir}/CMake.app/Contents/man/man7/cmake-file-api.7"
  manpage "#{appdir}/CMake.app/Contents/man/man7/cmake-generator-expressions.7"
  manpage "#{appdir}/CMake.app/Contents/man/man7/cmake-generators.7"
  manpage "#{appdir}/CMake.app/Contents/man/man7/cmake-language.7"
  manpage "#{appdir}/CMake.app/Contents/man/man7/cmake-modules.7"
  manpage "#{appdir}/CMake.app/Contents/man/man7/cmake-packages.7"
  manpage "#{appdir}/CMake.app/Contents/man/man7/cmake-policies.7"
  manpage "#{appdir}/CMake.app/Contents/man/man7/cmake-presets.7"
  manpage "#{appdir}/CMake.app/Contents/man/man7/cmake-properties.7"
  manpage "#{appdir}/CMake.app/Contents/man/man7/cmake-qt.7"
  manpage "#{appdir}/CMake.app/Contents/man/man7/cmake-server.7"
  manpage "#{appdir}/CMake.app/Contents/man/man7/cmake-toolchains.7"
  manpage "#{appdir}/CMake.app/Contents/man/man7/cmake-variables.7"
  manpage "#{appdir}/CMake.app/Contents/man/man7/cpack-generators.7"

  zap trash: [
    "~/Library/Preferences/org.cmake.cmake.plist",
    "~/Library/Saved Application State/org.cmake.cmake.savedState",
  ]
end
