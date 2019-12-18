cask 'futuniuniu' do
  version '9.12.584_201912041835'
  sha256 '406dfc1af6c54063ad80c220f1842c2aa9e640340b22113854b31a0af589c6d6'

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
