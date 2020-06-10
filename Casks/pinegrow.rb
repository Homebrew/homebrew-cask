cask 'pinegrow' do
  version '5.96.0'
  sha256 '6a7de6dc5ea92ae56b333effc384d53c4912e0d05e94a0f4fecc76d5167a9e74'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  appcast 'https://pinegrow.com/'
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
