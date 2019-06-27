cask 'futuniuniu' do
  version '9.6.522_201906261719'
  sha256 'aeac01322f30294a10f9204a3b4155d435093bdc53130ed0d1e92526604e275b'

  # software-file-1251001049.cosgz.myqcloud.com was verified as official when first introduced to the cask
  url "https://software-file-1251001049.cosgz.myqcloud.com/FTNNForMac_#{version}_std_release_std_officially.dmg"
  appcast 'https://www.futu5.com/tools'
  name 'FutuNiuniu'
  name '富途牛牛'
  homepage 'https://hk.futu5.com/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/7435
  app 'FutuNiuniu.app', target: '富途牛牛.app'
end
