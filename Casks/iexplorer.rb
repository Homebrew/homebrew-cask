cask 'iexplorer' do
  version '3.8.6.0'
  sha256 '4f98a8012820b2d587b11ed046cadbae98ef0071b6418055b72874abe5ad5924'

  url "https://www.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'https://www.macroplant.com/iexplorer/ie3-appcast.xml',
          :checkpoint => '03bc1c95590f550bbafbeaf9b55af592a154d2faf87c1f82172e103424780b2c'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'
  license :freemium

  depends_on :macos => '>= :snow_leopard'

  app 'iExplorer.app'
end
