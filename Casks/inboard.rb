cask 'inboard' do
  version '1.1.3-361'
  sha256 'eb1fd8516ad4686dbf6b3d8c3d7da7db9e46f1a838ebf3a677d149c680104a57'

  url "https://inboardapp.com/trial/Inboard-#{version}.zip"
  appcast 'https://inboardapp.com/appcast.xml'
  name 'Inboard'
  homepage 'https://inboardapp.com/'

  app 'Inboard.app'
end
