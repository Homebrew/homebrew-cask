cask 'ogdesign-eagle' do
  version '0.9.44'
  sha256 '4ab78a5f238cb56bbc2a90196f7ef51f3b91113b74f4eeb040259d0a7847250d'

  # eagle-1253434826.file.myqcloud.com was verified as official when first introduced to the cask
  url "http://eagle-1253434826.file.myqcloud.com/releases/darwin/#{version}/Eagle.zip"
  name 'Eagle'
  homepage 'https://eagle.cool'

  app 'Eagle.app'
end
