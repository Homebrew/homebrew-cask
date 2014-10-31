class Spectacle < Cask
  version '0.8.8'
  sha256 '7c7386e526cbabedb1e16f2e3366c7842712f590985fe9d4f57ff9c0a7854bcf'

  url "https://s3.amazonaws.com/spectacle/downloads/Spectacle+#{version}.zip"
  appcast 'http://spectacleapp.com/updates/appcast.xml',
          :sha256 => '5d75e2e07886ca135916e224b4b5c1468d9af1ea8ef355db33b28bff511fa6b2'
  homepage 'http://spectacleapp.com/'
  license :mit

  app 'Spectacle.app'
  zap :delete => '~/Library/Preferences/com.divisiblebyzero.Spectacle.plist'
end
