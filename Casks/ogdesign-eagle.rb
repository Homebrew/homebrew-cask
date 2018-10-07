cask 'ogdesign-eagle' do
  version '1.7.0-build4'
  sha256 '8edd85710902fc5079d2bfad4092c34e4e278311ca8139a14596b46f2155c0d4'

  # eagle-1253434826.file.myqcloud.com was verified as official when first introduced to the cask
  url "https://eagle-1253434826.file.myqcloud.com/releases/Eagle-#{version}.dmg"
  name 'Eagle'
  homepage 'https://eagle.cool/macOS'

  app 'Eagle.app'
end
