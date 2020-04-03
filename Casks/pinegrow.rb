cask 'pinegrow' do
  version '5.95'
  sha256 'fcb54c8f3b0f1e233d4c0ae386047b9f85883c52f7785fb4fcf5243aa0990c4a'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  appcast 'https://pinegrow.com/'
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
