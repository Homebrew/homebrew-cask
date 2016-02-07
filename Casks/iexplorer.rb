cask 'iexplorer' do
  version '3.9.3.0'
  sha256 '90720584d0d7f32bbd1e0d4f3bd1b2c65aa9626ae33d5790b0b0aec6c019de3b'

  url "https://www.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'https://www.macroplant.com/iexplorer/ie3-appcast.xml',
          checkpoint: 'd2cae07dc52ceb8bd16c39e7d318f60d9bbf202c84df44a7dbda27bb4b1e8ea1'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'iExplorer.app'
end
