cask 'hbuilderx' do
  version '2.4.6.20191210'
  sha256 '425a3d735a52706affcbc02e3678f6edf7b81e52150c97bbbad6b24ca7e44e86'

  # download.dcloud.net.cn was verified as official when first introduced to the cask
  url "https://download.dcloud.net.cn/HBuilderX.#{version}.dmg"
  appcast 'https://dcloud.io/docs/HBuilder.json'
  name 'HBuilderX'
  homepage 'https://www.dcloud.io/hbuilderx.html'

  app 'HBuilderX.app'
end
