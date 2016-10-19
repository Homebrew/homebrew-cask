cask 'baidunetdisk' do
  version '2.0.0'
  sha256 '06a3477139a2c96fc8ceaa3a59c1a65dc0b57ec9a069f2f6356067778ae2014f'

  # baidupcs.com/issue/netdisk/MACguanjia was verified as official when first introduced to the cask
  url "http://issuecdn.baidupcs.com/issue/netdisk/MACguanjia/BaiduNetdisk_mac_#{version}.dmg"
  name 'Baidu NetDisk'
  name '百度网盘'
  homepage 'http://pan.baidu.com/download#pan'

  app 'BaiduNetdisk_mac.app'
end
