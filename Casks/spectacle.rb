cask :v1 => 'spectacle' do

  if MacOS.release <= :mountain_lion
    version '0.8.6'
    sha256 '3e367d2d7e6fe7d5f41d717d49cb087ba7432624b71ddd91c0cfa9d5a5459b7c'
  else
    version '0.8.9'
    sha256 '11058388f4f3a2f91c7f888d8bf11017e12dea07808895d899c5b8407f679993'

    appcast 'http://spectacleapp.com/updates/appcast.xml',
            :sha256 => '5d75e2e07886ca135916e224b4b5c1468d9af1ea8ef355db33b28bff511fa6b2'
  end

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/spectacle/downloads/Spectacle+#{version}.zip"
  homepage 'http://spectacleapp.com/'
  license :mit

  app 'Spectacle.app'

  zap :delete => '~/Library/Preferences/com.divisiblebyzero.Spectacle.plist'
end
