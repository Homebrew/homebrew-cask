cask 'shadowsocksx-ng' do
  version '1.8.1'
  sha256 'c700654d0f4936e081bcc91479cb3ea7dd5f67d4b28b312a66221093726cd28d'

  url "https://github.com/shadowsocks/ShadowsocksX-NG/releases/download/v#{version}/ShadowsocksX-NG.#{version}.zip"
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
