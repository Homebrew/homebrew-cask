cask 'futuniuniu' do
  version '9.8.542_201908211733'
  sha256 '47ebf2c5e278e74dc43a989d68f48beaeffb8d8ec506ba1e1d7ea7ba4ad912be'

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
