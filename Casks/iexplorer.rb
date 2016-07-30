cask 'iexplorer' do
  version '3.9.13.0'
  sha256 '8fe503c049db2f612c7e13e746f7c30378c4844a6802a54dc923cf7d676cd782'

  url "https://www.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'https://www.macroplant.com/iexplorer/ie3-appcast.xml',
          checkpoint: '3289c939503fee647f9c680ae8042c1efeb1fcdb45f70402bae834934c49075d'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'iExplorer.app'
end
