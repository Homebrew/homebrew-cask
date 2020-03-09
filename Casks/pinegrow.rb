cask 'pinegrow' do
  version '5.941'
  sha256 '998c79e0c4eb5118367bb8e4f2ec6cb188571c8167efae7a62dde29e1257c5ec'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  appcast 'https://pinegrow.com/'
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
