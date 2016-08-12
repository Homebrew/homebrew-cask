cask 'iexplorer' do
  version '3.9.14.0'
  sha256 '135639867092e801c2eba58812ce32d8e852b17a18c4fc3dcab5afaf0711a2a9'

  url "https://www.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast "https://www.macroplant.com/iexplorer/ie#{version.major}-appcast.xml",
          checkpoint: '9b147ab5c6acdf1c27eb2fbb42cb68d36c5fb0ecb9a250e2a1c76667ed8af90b'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'iExplorer.app'
end
