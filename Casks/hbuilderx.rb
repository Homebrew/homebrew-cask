cask 'hbuilderx' do
  version '2.6.5.20200314'
  sha256 'd364ed39856c5306fd36cad6f15874f65498dc2cd52e0b9a8ef9b3e37886e9a0'

  # download.dcloud.net.cn was verified as official when first introduced to the cask
  url "https://download.dcloud.net.cn/HBuilderX.#{version}.dmg"
  appcast 'https://dcloud.io/docs/HBuilder.json'
  name 'HBuilderX'
  homepage 'https://www.dcloud.io/hbuilderx.html'

  app 'HBuilderX.app'
end
