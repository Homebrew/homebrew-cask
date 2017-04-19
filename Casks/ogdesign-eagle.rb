cask 'ogdesign-eagle' do
  version '1.0.0'
  sha256 'ccb8e013980b2e58f20a0fd09189dba5a545f333533d92666155aeaf12c4c067'

  # eagle-1253434826.file.myqcloud.com was verified as official when first introduced to the cask
  url "http://eagle-1253434826.file.myqcloud.com/releases/darwin/#{version}/Eagle.zip"
  name 'Eagle'
  homepage 'https://eagle.cool/macOS'

  app 'Eagle.app'
end
