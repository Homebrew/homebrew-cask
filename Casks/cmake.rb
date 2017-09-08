cask 'cmake' do
  version '3.9.2'
  sha256 '25ab549ae0da64ec52a69008f57b91bb5a6cb5ececd64991786cf68928a2ba81'

  url "https://www.cmake.org/files/v#{version.major_minor}/cmake-#{version}-Darwin-x86_64.dmg"
  name 'CMake'
  homepage 'https://cmake.org/'

  conflicts_with formula: 'cmake'

  app 'CMake.app'
  binary "#{appdir}/CMake.app/Contents/bin/cmake"
  binary "#{appdir}/CMake.app/Contents/bin/ccmake"
  binary "#{appdir}/CMake.app/Contents/bin/cmakexbuild"
  binary "#{appdir}/CMake.app/Contents/bin/cpack"
  binary "#{appdir}/CMake.app/Contents/bin/ctest"
  binary "#{appdir}/CMake.app/Contents/bin/cmake-gui"
end
