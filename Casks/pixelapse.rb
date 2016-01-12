cask 'pixelapse' do
  version '2.0.3'
  sha256 'c47eaa6d36286a31f8c87ba1d6855729c17f7f203975e90505a2c23dbe83eb09'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/download-pixelapse/Pixelapse%20#{version}.dmg"
  appcast 'https://download-pixelapse.s3.amazonaws.com/macappcast.xml',
          :sha256 => '01c7636055fd9bee36c32ff8303db1ab110d4fa788df04b441419f2e27781039'
  name 'Pixelapse'
  homepage 'https://www.pixelapse.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Pixelapse.app'
end
