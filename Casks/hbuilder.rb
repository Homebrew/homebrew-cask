cask 'hbuilder' do
  version '9.0.1'
  sha256 'dc8bcc073fe40450ff7cad9f098ba668e2e21066ff0984c6514f3d338a25084c'

  # download.dcloud.net.cn was verified as official when first introduced to the cask
  url "http://download.dcloud.net.cn/HBuilder.#{version}.macosx_64.dmg"
  name 'HBuilder'
  homepage 'https://www.dcloud.io/'

  app 'HBuilder.app'
end
