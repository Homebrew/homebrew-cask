cask :v1 => 'iexplorer' do
  version '3.5.1.2'
  sha256 'd94d00f9eaad1f6b7c0ac1d9c6f426ba152ad0434ac8b41b55761121b37dcd31'

  url "http://cdn.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'http://www.macroplant.com/iexplorer/ie3-appcast.xml',
          :sha256 => '34181a610ff793f715f84afc24cc2de06efacdae62fa05fb031d812dc2e1f2b5'
  homepage 'http://www.macroplant.com/'
  license :unknown

  app 'iExplorer.app'
end
