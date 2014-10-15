class Spectacle < Cask
  version '0.8.5'
  sha256 'f0d40b4c78c8b6509b8e42b8d8b03144b9ecb5ed6ff89d278a24ffd74bfe61b4'

  url "https://s3.amazonaws.com/spectacle/downloads/Spectacle+#{version}.zip"
  appcast 'http://spectacleapp.com/updates/appcast.xml',
          :sha256 => 'caa9f23c6ba36fc40f7fe35eb8cfb1a02ba4ed7eb2f62f8f137d01bab8de61dd'
  homepage 'http://spectacleapp.com/'
  license :unknown

  app 'Spectacle.app'
  zap :delete => '~/Library/Preferences/com.divisiblebyzero.Spectacle.plist'
end
