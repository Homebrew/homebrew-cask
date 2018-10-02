cask 'shadowsocksx-ng' do
  version '1.8.2'
  sha256 'ebb27da5c6fdfcbcbcb2e073c408f10412e702b9c9dfc34f862c080a232ec74c'

  url "https://github.com/shadowsocks/ShadowsocksX-NG/releases/download/v#{version}/ShadowsocksX-NG.app.#{version}.zip"
  appcast 'https://github.com/shadowsocks/ShadowsocksX-NG/releases.atom'
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
                         executable: "#{appdir}/ShadowsocksX-NG.app/Contents/Resources/proxy_conf_helper",
                         args:       ['--mode', 'off'],
                         sudo:       true,
                       }

  zap trash: [
               '~/.ShadowsocksX-NG',
               '~/Library/Application Support/ShadowsocksX-NG',
               '~/Library/Caches/com.qiuyuzhou.ShadowsocksX-NG',
               '~/Library/Preferences/com.qiuyuzhou.ShadowsocksX-NG.plist',
             ]
end
