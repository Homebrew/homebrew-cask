cask 'hbuilder' do
  version '8.1.0'
  sha256 '2ca373a1cf9afb1de3d227946be41545c4bceca223b4f9f97e7b74480b158c15'

  # download.dcloud.net.cn was verified as official when first introduced to the cask
  url "http://download.dcloud.net.cn/HBuilder.#{version}.macosx_64.dmg"
  name 'HBuilder'
  homepage 'https://www.dcloud.io/'

  app 'HBuilder.app'
end
