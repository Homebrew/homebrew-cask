cask 'shadowsocksx-ng-r8' do
  version '1.6.9'
  sha256 '46eb20b47d2aac54b466ecbb2f3c5d9be3085c9fb8651f55f49f98b2d6de9b21'

  url "https://github.com/paradiseduo/ShadowsocksX-NG-R8/releases/download/#{version}/ShadowsocksX-NG-R8.zip"
  appcast 'https://github.com/paradiseduo/shadowsocksx-ng-r8/releases.atom'
  name 'ShadowsocksX-NG-R8'
  homepage 'https://github.com/paradiseduo/ShadowsocksX-NG-R8/'

  conflicts_with cask: 'shadowsocksx'
  depends_on macos: '>= :high_sierra'

  app 'ShadowsocksX-NG-R8.app'

  postflight do
    system_command "#{appdir}/ShadowsocksX-NG-R8.app/Contents/Resources/install_helper.sh"
  end

  uninstall delete:    '/Library/Application Support/ShadowsocksX-NG-R8',
            launchctl: [
                         'com.qiuyuzhou.shadowsocksX-NG.http',
                         'com.qiuyuzhou.shadowsocksX-NG.kcptun',
                         'com.qiuyuzhou.shadowsocksX-NG.local',
                         'com.qiuyuzhou.ShadowsocksX-NG.LaunchHelper',
                       ],
            quit:      'com.qiuyuzhou.ShadowsocksX-NG',
            script:    {
                         executable: '/Library/Application Support/ShadowsocksX-NG-R8/proxy_conf_helper',
                         args:       ['--mode', 'off'],
                       }

  zap trash: [
               '~/.ShadowsocksX-NG',
               '~/Library/Application Support/ShadowsocksX-NG-R8',
               '~/Library/Caches/com.qiuyuzhou.ShadowsocksX-NG',
               '~/Library/Preferences/com.qiuyuzhou.ShadowsocksX-NG.plist',
             ]
end
