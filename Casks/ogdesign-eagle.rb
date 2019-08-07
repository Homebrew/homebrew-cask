cask 'ogdesign-eagle' do
  version '1.9.2'
  sha256 '83bb4c55e24a10ad7441d9eef0d9c12fe58482ff57242f06e7a9b9d490a557fc'

  # eagleapp.s3-accelerate.amazonaws.com was verified as official when first introduced to the cask
  url "https://eagleapp.s3-accelerate.amazonaws.com/releases/Eagle-#{version}.dmg"
  appcast 'https://eagle.cool/changelog'
  name 'Eagle'
  homepage 'https://eagle.cool/macOS'

  app 'Eagle.app'
end
