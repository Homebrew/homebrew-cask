cask 'futuniuniu' do
  version '10.3.636_202003181822'
  sha256 'e9038c585ab4a5a128587c82cd932a6f1d694dd96c4ff8e599ffc4411d461507'

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
