cask 'pinegrow' do
  version '5.94'
  sha256 'f71fc3303f460b8b615b7882c15abe9827057b903c76b79a7d2b5945b56dcfa9'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  appcast 'https://pinegrow.com/'
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
