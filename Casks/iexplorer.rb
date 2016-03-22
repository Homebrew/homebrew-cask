cask 'iexplorer' do
  version '3.9.7.0'
  sha256 '715a7e932da57ffbfd9dea161777905a30206cfdc122b788df774793211c3d6c'

  url "https://www.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'https://www.macroplant.com/iexplorer/ie3-appcast.xml',
          checkpoint: '8b87ff2576664b75296e953006fe6fc236afc218e783d46dd8314c30ab13c097'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'iExplorer.app'
end
