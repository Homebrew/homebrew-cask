cask 'shadowsocksx-ng-r' do
  version '1.4.3-R8-build3'
  sha256 'f0f85355b7447d21105cf22f0d5f80a08c4d81841d7d45bfdc6090cd01a9f013'

  url "https://github.com/qinyuhang/ShadowsocksX-NG-R/releases/download/#{version}/ShadowsocksX-NG-R8.dmg"
  appcast 'https://github.com/qinyuhang/ShadowsocksX-NG-R/releases.atom'
  name 'ShadowsocksX-NG-R'
  homepage 'https://github.com/qinyuhang/ShadowsocksX-NG-R/'

  conflicts_with cask: 'shadowsocksx'
  depends_on macos: '>= :el_capitan'

  app 'ShadowsocksX-NG-R8.app'

  postflight do
    system_command "#{appdir}/ShadowsocksX-NG-R8.app/Contents/Resources/install_helper.sh"
  end

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

  zap trash: [
               '~/.ShadowsocksX-NG',
               '~/Library/Application Support/ShadowsocksX-NG',
               '~/Library/Caches/com.qiuyuzhou.ShadowsocksX-NG',
               '~/Library/Preferences/com.qiuyuzhou.ShadowsocksX-NG.plist',
             ]
end
