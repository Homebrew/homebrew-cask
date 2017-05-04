cask 'diskmaker-x' do
  version '6rc3'
  sha256 '762681fff8576a345f2138df17bcb071565171e49de1c5b59e0abc0c8ccbc7d5'

  url "https://diskmakerx.com/downloads/DiskMaker_X_#{version}.dmg"
  appcast 'https://diskmakerx.com/feed/',
          checkpoint: '6eb9b7d3f17ab217f802cdcc582166b29205eb5996c91e0f482cbba8e7ab7064'
  name 'DiskMaker X'
  homepage 'https://diskmakerx.com/'

  app "DiskMaker X #{version.major}.app"
end
