cask 'pinegrow' do
  version '5.7'
  sha256 '1d8291f04044681a06a6a168fad26fa7b6ad4a4c9f2add7b62b8474d9317b73c'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  appcast 'https://pinegrow.com/'
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
