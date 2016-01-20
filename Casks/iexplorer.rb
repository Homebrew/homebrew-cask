cask 'iexplorer' do
  version '3.8.6.0'
  sha256 '4f98a8012820b2d587b11ed046cadbae98ef0071b6418055b72874abe5ad5924'

  url "https://www.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'https://www.macroplant.com/iexplorer/ie3-appcast.xml',
          checkpoint: 'f3523ef8974ea4face7eda1b6b6115bd6a393833f5f0043a7f0869896bb97f00'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'iExplorer.app'
end
