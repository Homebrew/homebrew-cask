cask 'pinegrow' do
  version '4.1'
  sha256 'cb63f2e8e5d07b78a1f868b0d071d14808981a3f71faeaf6ab0e343450f98aa6'

  url "http://download.pinegrow.com/PinegrowMac.#{version}.dmg"
  name 'Pinegrow'
  homepage 'https://pinegrow.com/'

  app 'Pinegrow.app'
end
