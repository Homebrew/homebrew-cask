cask 'cryo' do
  version '0.5.5'
  sha256 'fb518e89e770218b26721947d93759aac7c4f18a77acc43cd90a64c01ea13ff8'

  url "https://cryonet.io/downloads/macos/cryo_#{version}_macos.zip"
  appcast 'https://cryonet.io/'
  name 'cryo'
  homepage 'https://cryonet.io/'

  app 'cryo.app'
end
