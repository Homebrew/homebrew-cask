cask 'remembear' do
  version '0.4.0'
  sha256 '30a6d5d0b682ecd55c3989d8f0984101f9fbd80e3ed566b57fcf26bf153c3d72'

  # amazonaws.com/tunnelbear/downloads/mac/remembear was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tunnelbear/downloads/mac/remembear/RememBear-#{version}.zip"
  appcast 'https://tunnelbear.s3.amazonaws.com/downloads/mac/remembear/appcast-beta.xml',
          checkpoint: 'affc8464431e6a681148ae699cb9ca61275536eace6ed0af5d4bb98f5a043914'
  name 'RememBear'
  homepage 'https://www.remembear.com/'

  app 'RememBear.app'
end
