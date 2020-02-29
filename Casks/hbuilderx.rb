cask 'hbuilderx' do
  version '2.6.1.20200226'
  sha256 'a228ad446f14b0b3c7cf6124973e1da2f1c9e453ba2ab1a30ea99196102b0742'

  # download.dcloud.net.cn was verified as official when first introduced to the cask
  url "https://download.dcloud.net.cn/HBuilderX.#{version}.dmg"
  appcast 'https://dcloud.io/docs/HBuilder.json'
  name 'HBuilderX'
  homepage 'https://www.dcloud.io/hbuilderx.html'

  app 'HBuilderX.app'
end
