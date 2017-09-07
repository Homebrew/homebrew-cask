cask 'shadowsocksx-ng' do
  version '1.5.1'
  sha256 '01925203cfeac54e580fbde10f896f54bf0eb5edea28ccbb7cf33c55b51ef9d9'

  url "https://github.com/shadowsocks/ShadowsocksX-NG/releases/download/v#{version}/ShadowsocksX-NG.#{version}.zip"
  appcast 'https://github.com/shadowsocks/ShadowsocksX-NG/releases.atom',
          checkpoint: 'f9fb51bfb0f2c0c28093eea5b84e87ba7269b15694a56f544895780e978fcc70'
  name 'ShadowsocksX-NG'
  homepage 'https://github.com/shadowsocks/ShadowsocksX-NG/'

  conflicts_with cask: 'shadowsocksx'
  depends_on macos: '>= :el_capitan'

  app 'ShadowsocksX-NG.app'

  uninstall delete:    '/Library/Application Support/ShadowsocksX-NG',
            launchctl: [
                         'com.qiuyuzhou.shadowsocksX-NG.http',
                         'com.qiuyuzhou.shadowsocksX-NG.kcptun',
                         'com.qiuyuzhou.shadowsocksX-NG.local',
                         'com.qiuyuzhou.ShadowsocksX-NG.LaunchHelper',
                       ],
            quit:      'com.qiuyuzhou.ShadowsocksX-NG',
            script:    {
                         executable: '/Library/Application Support/ShadowsocksX-NG/proxy_conf_helper',
                         args:       ['--mode', 'off'],
                       }

  zap delete: '~/Library/Caches/com.qiuyuzhou.ShadowsocksX-NG',
      trash:  [
                '~/.ShadowsocksX-NG',
                '~/Library/Application Support/ShadowsocksX-NG',
                '~/Library/Preferences/com.qiuyuzhou.ShadowsocksX-NG.plist',
              ]
end
