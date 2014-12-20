cask :v1 => 'doomsday-engine' do
  version '1.14.5'
  sha256 '019cd0cf89e69d80cd8f6fbbd3e3fd57b8ae4d0bcdf4285e8a71caad9f46417e'

  url 'http://sourceforge.net/projects/deng/files/latest/download'
  name 'Doomsday Engine'
  homepage 'http://dengine.net'
  license :oss    # todo: improve this machine-generated value

  pkg '/Volumes/Doomsday Engine 1.14.5/Doomsday.pkg'

  uninstall :pkgutil => 'net.dengine.doomsday.*'
end
