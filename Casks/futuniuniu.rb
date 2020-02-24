cask 'futuniuniu' do
  version '10.2.622_202002172209'
  sha256 '47ae5513eda159144cfe22cdee72ecc7c72f70ecc1aeb5bfd89ff8b24661b4e4'

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
