cask 'futuniuniu' do
  version '10.4.642_202004131013'
  sha256 'f49aa27c4bdd0ae7f395e04e3539c713b97de871a0bd089eafd870d3ac5804a6'

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
