cask 'hbuilder' do
  version '9.0.4'
  sha256 '8214f26360dc2ad9dd24a371c8e29391cd80ab51d0418491ebc76c4af9bbb898'

  # download.dcloud.net.cn was verified as official when first introduced to the cask
  url "http://download.dcloud.net.cn/HBuilder.#{version}.macosx_64.dmg"
  name 'HBuilder'
  homepage 'https://www.dcloud.io/'

  app 'HBuilder.app'
end
