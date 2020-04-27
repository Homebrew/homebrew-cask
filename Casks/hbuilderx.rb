cask 'hbuilderx' do
  version '2.6.16.20200424'
  sha256 '5a858bad055af25542c26e0c97474a148419e74c5d4da6842f1856f52a5f8dad'

  # download.dcloud.net.cn/ was verified as official when first introduced to the cask
  url "https://download.dcloud.net.cn/HBuilderX.#{version}.dmg"
  appcast 'https://dcloud.io/docs/HBuilder.json'
  name 'HBuilderX'
  homepage 'https://www.dcloud.io/hbuilderx.html'

  app 'HBuilderX.app'
end
