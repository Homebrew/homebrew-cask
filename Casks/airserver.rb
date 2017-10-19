cask 'airserver' do
  version '7.1.1'
  sha256 'bf00dbcc9a5444b03f8a31a798433b21dd76a87be4ac287c2d997ca573363515'

  url "http://dl.airserver.com/mac/AirServer-#{version}.dmg"
  appcast 'https://www.airserver.com/downloads/mac/appcast.xml',
          checkpoint: '0ca49619f0670bc106e1fd30a665308cac7c5dca330d4d8aa97d3d02ecc4a1b1'
  name 'AirServer'
  homepage 'https://www.airserver.com/'

  app 'AirServer.app'
end
