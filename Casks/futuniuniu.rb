cask 'futuniuniu' do
  version '9.4.502_201904191436'
  sha256 'b4da2fc316c4d50246eb5946c0d948e1f62ae65df3bbcd2ca94de0df9e0a33bf'

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
