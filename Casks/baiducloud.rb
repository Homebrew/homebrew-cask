cask :v1 => 'baiducloud' do
  version '2.4.3'
  sha256 'f8e1f5afa3e1cbdac4d3d859f2f8da41093e37afbb51959ab6ee6b2dc91fc069'

  url "http://bcscdn.baidu.com/netdisk/BaiduYun_#{version}.dmg"
  name '百度云同步盘'
  name 'Baidu Yun Tong Bu Pan'
  name 'Baigu Cloud'
  homepage 'http://pan.baidu.com'
  license :gratis

  app '百度云同步盘.app'

  uninstall :quit => 'com.baidu.netdiskmac'

  zap :delete => [
                  '~/Library/Application Support/百度云同步盘',
                  '~/Preferences/com.baidu.netdiskmac.plist'
                 ]
end
