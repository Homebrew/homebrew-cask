cask 'controlplane' do
  version '1.6.6'
  sha256 'a9c9cdfe350bc9f038764a0b4c8f4337750113f44aacd68aa81b6f0aa391af1b'

  url "https://www.controlplaneapp.com/download/#{version}"
  appcast 'https://www.controlplaneapp.com/appcast.xml'
  name 'ControlPlane'
  homepage 'https://www.controlplaneapp.com/'

  app 'ControlPlane.app'

  zap trash: '~/Library/Preferences/com.dustinrue.ControlPlane.plist'
end
