cask 'pinegrow' do
  version '3.1'
  sha256 'c0f1d8c2a224083dd945ff4acf4fbb92187c76b5f4df024affc42d49f825181c'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
