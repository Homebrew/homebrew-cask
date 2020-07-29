cask 'cryo' do
  version '0.5.6'
  sha256 '12e4c7ae43b6b9456eabd18b75d51f4f39f2dce904b2cdbab3a78de1ac13a42f'

  url "https://cryonet.io/downloads/macos/cryo_#{version}_macos.zip"
  name 'cryo'
  homepage 'https://cryonet.io/'

  app 'cryo.app'
end
