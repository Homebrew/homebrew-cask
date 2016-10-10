cask 'doomsday-engine' do
  version '1.15.8'
  sha256 '6882d3ff2aa855096e003ec19b1ccca4e9b2b4576d2c667abf8e48310f08f098'

  # sourceforge.net/deng was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/deng/doomsday_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/deng/rss',
          checkpoint: '889f9570d9b2cdc64198a4766473d44f8c923affd73ff6879fed3f5feec6f87c'
  name 'Doomsday Engine'
  homepage 'http://dengine.net'

  pkg 'Doomsday.pkg'

  uninstall pkgutil: 'net.dengine.doomsday.*'
end
