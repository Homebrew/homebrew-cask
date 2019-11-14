cask 'hbuilderx' do
  version '2.4.1.20191114'
  sha256 'f2949ddd8cf79f886e980aa54c6e6e87d9db3d08aaa7202d8f3e4abbedc8473f'

  # download.dcloud.net.cn was verified as official when first introduced to the cask
  url "https://download.dcloud.net.cn/HBuilderX.#{version}.dmg"
  appcast 'https://dcloud.io/docs/HBuilder.json'
  name 'HBuilderX'
  homepage 'https://www.dcloud.io/hbuilderx.html'

  app 'HBuilderX.app'
end
