cask 'ogdesign-eagle' do
  version '1.1.2'
  sha256 '747e1cf3420686105813250acb02fa3b17fa4b84e59b40c8a476c0d06c8e9e3f'

  # eagle-1253434826.file.myqcloud.com was verified as official when first introduced to the cask
  url "http://eagle-1253434826.file.myqcloud.com/releases/darwin/#{version}/Eagle.zip"
  name 'Eagle'
  homepage 'https://eagle.cool/macOS'

  app 'Eagle.app'
end
