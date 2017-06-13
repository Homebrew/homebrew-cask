cask 'ogdesign-eagle' do
  version '1.1.5'
  sha256 '64809a425f05483d8fe5ba291ac8622338a53d8fbe09be879c83e7071c0dea23'

  # eagle-1253434826.file.myqcloud.com was verified as official when first introduced to the cask
  url "http://eagle-1253434826.file.myqcloud.com/releases/darwin/#{version}/Eagle-#{version}.zip"
  name 'Eagle'
  homepage 'https://eagle.cool/macOS'

  app 'Eagle.app'
end
