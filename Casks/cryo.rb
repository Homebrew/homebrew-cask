cask 'cryo' do
  version '0.5.1'
  sha256 'e73397dd0ccf3e1ef95165cdfc36c2f9cb523986f5c61f09c014bc3bb48f266e'

  url "https://cryonet.io/downloads/macos/cryo_#{version}_macos.zip"
  appcast 'https://cryonet.io/'
  name 'cryo'
  homepage 'https://cryonet.io/'

  app 'cryo.app'
end
