cask :v1 => 'cmake' do
  version '3.1.0'
  sha256 'e39c9363868a3e044e8227727705b632118981a63bc8dd1a45024378b7db9ba0'

  url "http://www.cmake.org/files/v3.1/cmake-#{version}-Darwin64.dmg"
  homepage 'http://cmake.org'
  license :bsd

  app 'CMake.app'
end
