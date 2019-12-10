cask 'pinegrow' do
  version '5.9'
  sha256 'efa3ed43fb1e56c97855afb76379b2a50850f80b990e828c28e5adf3177decc5'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  appcast 'https://pinegrow.com/'
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
