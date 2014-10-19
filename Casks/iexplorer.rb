class Iexplorer < Cask
  version '3.5.1.1'
  sha256 '0789b544aef8c94c64e5a85629f97b58499ba5579ebbb03be442dd950d092813'

  url "http://cdn.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'http://www.macroplant.com/iexplorer/ie3-appcast.xml',
          :sha256 => '34181a610ff793f715f84afc24cc2de06efacdae62fa05fb031d812dc2e1f2b5'
  homepage 'http://www.macroplant.com/'
  license :unknown

  app 'iExplorer.app'
end
