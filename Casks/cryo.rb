cask 'cryo' do
  version '0.5.2'
  sha256 'fd2a0311d5e503a77881fd693817a8f6d5863ff8d3dc0485b294f8d5c561a59b'

  url "https://cryonet.io/downloads/macos/cryo_#{version}_macos.zip"
  appcast 'https://cryonet.io/'
  name 'cryo'
  homepage 'https://cryonet.io/'

  app 'cryo.app'
end
