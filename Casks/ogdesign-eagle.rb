cask 'ogdesign-eagle' do
  version '0.9.46'
  sha256 'd208e17ebf419ab064a793f264a0de20addd57a62eb0307ac3d947029a98693a'

  # eagle-1253434826.file.myqcloud.com was verified as official when first introduced to the cask
  url "http://eagle-1253434826.file.myqcloud.com/releases/darwin/#{version}/Eagle.zip"
  name 'Eagle'
  homepage 'https://eagle.cool/macOS'

  app 'Eagle.app'
end
