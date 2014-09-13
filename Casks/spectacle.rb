class Spectacle < Cask
  version '0.8.5'
  sha256 'f0d40b4c78c8b6509b8e42b8d8b03144b9ecb5ed6ff89d278a24ffd74bfe61b4'

  url 'https://s3.amazonaws.com/spectacle/downloads/Spectacle+0.8.5.zip'
  appcast 'http://spectacleapp.com/updates/appcast.xml'
  homepage 'http://spectacleapp.com/'

  app 'Spectacle.app'
  zap :files => '~/Library/Preferences/com.divisiblebyzero.Spectacle.plist'
end
