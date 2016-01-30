cask 'iexplorer' do
  version '3.9.1.0'
  sha256 '45c0785f2c0929124a9a70fd371adbcee7632610377a8ade91e260c3492fd675'

  url "https://www.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'https://www.macroplant.com/iexplorer/ie3-appcast.xml',
          checkpoint: '889b61b57a876c2091077fe79fe2eca1683cf0c8a7649d66238e1662e9cbdc94'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'iExplorer.app'
end
