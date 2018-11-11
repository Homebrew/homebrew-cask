cask 'ogdesign-eagle' do
  version '1.8.1'
  sha256 '2ea4de81ef4f6dc5951ab682352595516e43948ea5716d31b646d105397c46f6'

  # s3.amazonaws.com/eagleapp/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/eagleapp/releases/Eagle-#{version}.dmg"
  name 'Eagle'
  homepage 'https://eagle.cool/macOS'

  app 'Eagle.app'
end
