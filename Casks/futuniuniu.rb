cask 'futuniuniu' do
  version '9.9.552_201909202003'
  sha256 'ad05ba8db5c2bf580277e9d9c4a7156a7aba9120d38f2cc7b94cf59a16e43e3a'

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
