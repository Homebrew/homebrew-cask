cask :v1 => 'iexplorer' do
  version '3.8.6.0'
  sha256 '4f98a8012820b2d587b11ed046cadbae98ef0071b6418055b72874abe5ad5924'

  url "https://www.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'https://www.macroplant.com/iexplorer/ie3-appcast.xml',
          :sha256 => '7d2fbda893fbc10fc5970a8f310a12aecfcfbba499c013972d4f01bced286875'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'
  license :freemium

  depends_on :macos => '>= :snow_leopard'

  app 'iExplorer.app'
end
