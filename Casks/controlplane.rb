cask 'controlplane' do
  if MacOS.version <= :snow_leopard
    version '1.2.3'
    sha256 '37f93d3a3a17a6e2f24447f0bc74c7e89ec1581ca52e5970960544858c86f909'
  else
    version '1.6.6'
    sha256 'a9c9cdfe350bc9f038764a0b4c8f4337750113f44aacd68aa81b6f0aa391af1b'

    appcast 'https://www.controlplaneapp.com/appcast.xml',
            checkpoint: '72cb4d20072fb0d7a698553902cf87d7b03352e894103892e568d26c2113884d'
  end

  url "https://www.controlplaneapp.com/download/#{version}"
  name 'ControlPlane'
  homepage 'https://www.controlplaneapp.com/'

  app 'ControlPlane.app'

  zap trash: '~/Library/Preferences/com.dustinrue.ControlPlane.plist'
end
