cask 'cryo' do
  version '0.5.0'
  sha256 '5fbc304b0823989ff1837a41bd331f09eeb99febdc552c89d89006c1885da988'

  url "https://cryonet.io/downloads/macos/cryo_#{version}_macos.zip"
  appcast 'https://cryonet.io/'
  name 'cryo'
  homepage 'https://cryonet.io/'

  app 'cryo.app'
end
