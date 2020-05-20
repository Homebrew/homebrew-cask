cask 'cryo' do
  version '0.5.3'
  sha256 'b04b7d98d2af12e07d77313a48d06e4abbc9220799ddf476c3a351ecd6ee8b23'

  url "https://cryonet.io/downloads/macos/cryo_#{version}_macos.zip"
  appcast 'https://cryonet.io/'
  name 'cryo'
  homepage 'https://cryonet.io/'

  app 'cryo.app'
end
