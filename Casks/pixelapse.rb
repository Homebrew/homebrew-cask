cask 'pixelapse' do
  version '2.0.3'
  sha256 'c47eaa6d36286a31f8c87ba1d6855729c17f7f203975e90505a2c23dbe83eb09'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/download-pixelapse/Pixelapse%20#{version}.dmg"
  appcast 'https://download-pixelapse.s3.amazonaws.com/macappcast.xml',
          checkpoint: '8fea8285a97d5865771aa186eebcfe017e272d549a6b5ff6b7bfc431c2be6c62'
  name 'Pixelapse'
  homepage 'https://www.pixelapse.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Pixelapse.app'
end
