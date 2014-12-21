cask :v1 => 'doomsday-engine' do
  version :latest
  sha256 :no_check

  url 'http://sourceforge.net/projects/deng/files/latest/download'
  name 'Doomsday Engine'
  homepage 'http://dengine.net'
  license :gpl

  pkg 'Doomsday.pkg'

  uninstall :pkgutil => 'net.dengine.doomsday.*'
end
