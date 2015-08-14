cask :v1 => 'baiducloud' do
  version '2.4.4'
  sha256 '0a1a438f9ab69d67f0d53d585f0a8c5db7fdbb84ab0c0df55fc06068a67b8149'

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
                  '~/Library/Preferences/com.baidu.netdiskmac.plist',
                  '~/Library/Caches/com.baidu.netdiskmac'
                 ]
end
