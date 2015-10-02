cask :v1 => 'iexplorer' do
  version '3.8.2.0'
  sha256 'b0248165c0f79cfd272679dee4a8b359416b98e55a7ad0d278a4ab8d5f1db2ed'

  url "https://www.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'https://www.macroplant.com/iexplorer/ie3-appcast.xml',
          :sha256 => 'd846153745620098a0ba84a45b315c7be1a4b1f796adde0844de5ce521a2e88d'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'
  license :freemium

  depends_on :macos => '>= :snow_leopard'

  app 'iExplorer.app'
end
