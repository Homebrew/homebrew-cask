class Spectacle < Cask
  version '0.8.7'
  sha256 'a13063aca1689aff86f9c865930193498a5c469cd6f323f5ab077043884c494a'

  url "https://s3.amazonaws.com/spectacle/downloads/Spectacle+#{version}.zip"
  appcast 'http://spectacleapp.com/updates/appcast.xml',
          :sha256 => '5d75e2e07886ca135916e224b4b5c1468d9af1ea8ef355db33b28bff511fa6b2'
  homepage 'http://spectacleapp.com/'
  license :mit

  app 'Spectacle.app'
  zap :delete => '~/Library/Preferences/com.divisiblebyzero.Spectacle.plist'
end
