cask 'cmake' do
  version '3.9.1'
  sha256 'dfca4071944576b19953ea9fb3e6e034baf9fcee03ab4d7ea17163fd5c6c1e80'

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
