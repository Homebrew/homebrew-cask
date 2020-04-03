cask 'hbuilderx' do
  version '2.6.9.20200403'
  sha256 '38e85e181806f54198da56cd70c2fa877b5df176a1277e74e89326c2267f01ef'

  # download.dcloud.net.cn was verified as official when first introduced to the cask
  url "https://download.dcloud.net.cn/HBuilderX.#{version}.dmg"
  appcast 'https://dcloud.io/docs/HBuilder.json'
  name 'HBuilderX'
  homepage 'https://www.dcloud.io/hbuilderx.html'

  app 'HBuilderX.app'
end
