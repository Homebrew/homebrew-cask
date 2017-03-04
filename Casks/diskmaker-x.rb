cask 'diskmaker-x' do
  version '6rc3'
  sha256 '762681fff8576a345f2138df17bcb071565171e49de1c5b59e0abc0c8ccbc7d5'

  url "https://diskmakerx.com/downloads/DiskMaker_X_#{version}.dmg"
  appcast 'https://diskmakerx.com/feed/',
          checkpoint: 'ff225f59b92a44cbc61729abc8cac1c2019da3bc30e0946a87782b46ddd1f0c3'
  name 'DiskMaker X'
  homepage 'https://diskmakerx.com/'

  app "DiskMaker X #{version.major}.app"
end
