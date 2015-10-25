cask :v1 => 'cmake' do
  version '3.3.2'
  sha256 '077ab2751b15e4d2debfbdbcab205e6dc59f49466cd12622b3f604cc6aebef85'

  url "http://www.cmake.org/files/v#{version.sub(%r{\.\d+$},'')}/cmake-#{version}-Darwin-x86_64.dmg"
  name 'CMake'
  homepage 'http://cmake.org'
  license :bsd

  app 'CMake.app'
  binary 'CMake.app/Contents/bin/cmake'
  binary 'CMake.app/Contents/bin/ccmake'
  binary 'CMake.app/Contents/bin/cmakexbuild'
  binary 'CMake.app/Contents/bin/cpack'
  binary 'CMake.app/Contents/bin/ctest'
  binary 'CMake.app/Contents/bin/cmake-gui'

  conflicts_with :formula => 'cmake'
end
