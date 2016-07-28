cask 'doomsday-engine' do
  version '1.15.8'
  sha256 '6882d3ff2aa855096e003ec19b1ccca4e9b2b4576d2c667abf8e48310f08f098'

  # sourceforge.net/sourceforge/deng was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/deng/doomsday_#{version}.dmg"
  name 'Doomsday Engine'
  homepage 'http://dengine.net'
  license :gpl

  pkg 'Doomsday.pkg'

  uninstall pkgutil: 'net.dengine.doomsday.*'
end
