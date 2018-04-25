cask 'ogdesign-eagle' do
  version '1.5.1-build2'
  sha256 'ab5c9d49cf7de1ea84604005128c7ea918ee168e4db9ca24b19ce092bc954f44'

  # eagle-1253434826.file.myqcloud.com was verified as official when first introduced to the cask
  url "http://eagle-1253434826.file.myqcloud.com/releases/Eagle-#{version}.dmg"
  name 'Eagle'
  homepage 'https://eagle.cool/macOS'

  app 'Eagle.app'
end
