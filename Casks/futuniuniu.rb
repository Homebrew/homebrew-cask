cask 'futuniuniu' do
  version '10.5.652_202005112106'
  sha256 'c0ad11d345646ee6f75c069335553287f28ff1bbcf0617921bcb45b2baee326d'

  # software-file-1251001049.file.myqcloud.com/ was verified as official when first introduced to the cask
  url "https://software-file-1251001049.file.myqcloud.com/FTNNForMac_#{version}_Website.dmg"
  appcast 'https://www.futu5.com/tools'
  name 'FutuNiuniu'
  name '富途牛牛'
  homepage 'https://hk.futu5.com/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/7435
  app 'FutuNiuniu.app', target: '富途牛牛.app'
end
