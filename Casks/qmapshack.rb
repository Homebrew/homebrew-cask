cask 'qmapshack' do
  version '1.13.2'

  if MacOS.version <= :high_sierra
    sha256 'bb63f4d8873bc5b3754d7369bb617c0c2aeb6963cabb4cfd8d2564dd1b6f829b'

    url "https://bitbucket.org/maproom/qmapshack/downloads/QMapShack_OSX.10.XX_#{version}.zip"
  else
    sha256 'e5bc99ab6cecf6ea5c3ee26e16695617f658ef12f391b684a37cd5e779674b7a'

    url "https://bitbucket.org/maproom/qmapshack/downloads/QMapShack_OSX.10.14_#{version}.zip"
  end

  appcast 'https://bitbucket.org/maproom/qmapshack/downloads/'
  name 'QMapShack'
  homepage 'https://bitbucket.org/maproom/qmapshack/wiki/Home'

  app 'QMapShack.app'
end
