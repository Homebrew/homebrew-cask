cask 'futuniuniu' do
  version '10.2.624_202002271654'
  sha256 '894cb56c63e446221bc74767c1d9d262737c832962e8a1c7361affaa0d88b91b'

  # software-file-1251001049.file.myqcloud.com was verified as official when first introduced to the cask
  url "https://software-file-1251001049.file.myqcloud.com/FTNNForMac_#{version}_website.dmg"
  appcast 'https://www.futu5.com/tools'
  name 'FutuNiuniu'
  name '富途牛牛'
  homepage 'https://hk.futu5.com/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/7435
  app 'FutuNiuniu.app', target: '富途牛牛.app'
end
