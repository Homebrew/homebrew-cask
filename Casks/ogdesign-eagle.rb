cask 'ogdesign-eagle' do
  version '1.1.3'
  sha256 'bc79a7bef63a5c32a8f12131a346b5d692e99f2ca07a69cfd57ad6ae63170168'

  # eagle-1253434826.file.myqcloud.com was verified as official when first introduced to the cask
  url "http://eagle-1253434826.file.myqcloud.com/releases/darwin/#{version}/Eagle.zip"
  name 'Eagle'
  homepage 'https://eagle.cool/macOS'

  app 'Eagle.app'
end
