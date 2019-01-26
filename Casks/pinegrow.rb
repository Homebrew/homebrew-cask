cask 'pinegrow' do
  version '5.1'
  sha256 '80b6a81a06c182d71f967f6e1acbc70b1438249eaf4b06f8c1dffb83f77cbd1f'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
