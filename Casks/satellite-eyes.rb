cask 'satellite-eyes' do
  version '1.4.1'
  sha256 '06778b404bb928c81a4861b511b12293762b4f75918fec3ad5967b7f0d29f165'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://satellite-eyes.s3.amazonaws.com/satellite-eyes-#{version}.zip"
  appcast 'https://satellite-eyes.s3.amazonaws.com/appcast.xml',
          checkpoint: '7aa15b81afb44ee79d373a352b2ea2480da0d95474c394d48e57142514967e9b'
  name 'Satellite Eyes'
  homepage 'http://satelliteeyes.tomtaylor.co.uk/'
  license :apache

  app 'Satellite Eyes.app'
end
