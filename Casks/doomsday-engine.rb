cask 'doomsday-engine' do
  version '1.14.5'
  sha256 '8a45d3c05fbaf69f8b3cd1a6d8a6bbf1ba67d9a6c7c97551f2356a248cf86e1f'

  # sourceforge.net/sourceforge/deng was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/deng/doomsday_#{version}.dmg"
  name 'Doomsday Engine'
  homepage 'http://dengine.net'
  license :gpl

  pkg 'Doomsday.pkg'

  uninstall pkgutil: 'net.dengine.doomsday.*'
end
