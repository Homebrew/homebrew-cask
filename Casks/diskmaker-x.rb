cask 'diskmaker-x' do
  version '6rc3'
  sha256 '762681fff8576a345f2138df17bcb071565171e49de1c5b59e0abc0c8ccbc7d5'

  url "http://diskmakerx.com/downloads/DiskMaker_X_#{version}.dmg"
  appcast 'http://diskmakerx.com/feed/',
          checkpoint: '972a26f7e1c3d53eea31ed54d7572cedfae435af19d5010ccc0f54d9d072dd44'
  name 'DiskMaker X'
  homepage 'http://diskmakerx.com/'

  app "DiskMaker X #{version.major}.app"
end
