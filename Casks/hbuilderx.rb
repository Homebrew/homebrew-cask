cask 'hbuilderx' do
  version '2.5.1.20200103'
  sha256 'c903859c373d6c430d280b646d072e4328eb4a70c753834e3f9ccde2c8078bc0'

  # download.dcloud.net.cn was verified as official when first introduced to the cask
  url "https://download.dcloud.net.cn/HBuilderX.#{version}.dmg"
  appcast 'https://dcloud.io/docs/HBuilder.json'
  name 'HBuilderX'
  homepage 'https://www.dcloud.io/hbuilderx.html'

  app 'HBuilderX.app'
end
