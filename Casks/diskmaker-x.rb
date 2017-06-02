cask 'diskmaker-x' do
  version '6rc3'
  sha256 '762681fff8576a345f2138df17bcb071565171e49de1c5b59e0abc0c8ccbc7d5'

  url "https://diskmakerx.com/downloads/DiskMaker_X_#{version}.dmg"
  appcast 'https://diskmakerx.com/feed/',
          checkpoint: '1645fb12eef9e3976615d9fefdb6c382bf3bc419db00826d23687f545a4ee0ac'
  name 'DiskMaker X'
  homepage 'https://diskmakerx.com/'

  app "DiskMaker X #{version.major}.app"
end
