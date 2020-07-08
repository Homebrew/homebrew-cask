cask 'cryo' do
  version '0.5.10'
  sha256 '679bec106c9785ff8bf00fcb2388259b02dfde9a6c53d89e3c90fadac524b586'

  url "https://cryonet.io/downloads/macos/cryo_#{version}_macos.zip"
  name 'cryo'
  homepage 'https://cryonet.io/'

  app 'cryo.app'
end
