cask 'futuniuniu' do
  version '8.12.462_201812291212'
  sha256 '2c8983d3bd3903a729abb58a92e0636991d292c4e21a6eb7ab4b3bf0c986f20f'

  # software-file-1251001049.cosgz.myqcloud.com was verified as official when first introduced to the cask
  url "https://software-file-1251001049.cosgz.myqcloud.com/FTNNForMac_#{version}_std_release_std_officially.dmg"
  name 'FutuNiuniu'
  name '富途牛牛'
  homepage 'https://hk.futu5.com/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/7435
  app 'FutuNiuniu.app', target: '富途牛牛.app'
end
