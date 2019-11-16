cask 'pinegrow' do
  version '5.8'
  sha256 '8c2c1863c74b99f5b646f6262bf81fb4b5eaa534b4c0bc02600237f08ae219a4'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  appcast 'https://pinegrow.com/'
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
