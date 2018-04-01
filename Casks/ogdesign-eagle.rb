cask 'ogdesign-eagle' do
  version '1.4.0_build3'
  sha256 '903994156896dcd95501cff009f00f22ec35b70eec3eabfe43a776c2e718dc85'

  # eagle-1253434826.file.myqcloud.com was verified as official when first introduced to the cask
  url "http://eagle-1253434826.file.myqcloud.com/releases/Eagle_#{version}.dmg"
  name 'Eagle'
  homepage 'https://eagle.cool/macOS'

  app 'Eagle.app'
end
