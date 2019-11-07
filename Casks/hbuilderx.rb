cask 'hbuilderx' do
  version '2.3.7.20191024'
  sha256 '9eaa27762d9c7cc399de88cb9c1cc2f16eb72fc67357dcfab5d852b098c43290'

  # download.dcloud.net.cn was verified as official when first introduced to the cask
  url "https://download.dcloud.net.cn/HBuilderX.#{version}.dmg"
  appcas 'https://dcloud.io/docs/HBuilder.json'
  name 'HBuilderX'
  homepage 'https://www.dcloud.io/hbuilderx.html'

  app 'HBuilderX.app'
end
