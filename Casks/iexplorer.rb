cask 'iexplorer' do
  version '3.9.4.0'
  sha256 'f98ae73c37b55c38902926400ecd2a18a1b1272c6d0f0383410e786cfe914110'

  url "https://www.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'https://www.macroplant.com/iexplorer/ie3-appcast.xml',
          checkpoint: '88315b84d50d64eefd3348d5b265051360af98e2cc75c02e417e417bca31ea92'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'iExplorer.app'
end
