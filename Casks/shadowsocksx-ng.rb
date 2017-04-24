cask 'shadowsocksx-ng' do
  version '1.5.0'
  sha256 '62146a2b4ba243983ff555d265514caca3dfa4a8bcda81addd07fd75d2509eeb'

  url "https://github.com/shadowsocks/ShadowsocksX-NG/releases/download/v#{version}/ShadowsocksX-NG-#{version}.zip"
  appcast 'https://github.com/shadowsocks/ShadowsocksX-NG/releases.atom',
          checkpoint: '069a443dab1385e3485126dcd734bfebc6a4ec70dd40b945908c20136afedab7'
  name 'ShadowsocksX-NG'
  homepage 'https://github.com/shadowsocks/ShadowsocksX-NG/'

  conflicts_with cask: 'shadowsocksx'

  app 'ShadowsocksX-NG.app'

  zap delete: [
                '/Library/Application Support/ShadowsocksX-NG',
                '~/.ShadowsocksX-NG',
                '~/Library/Application Support/ShadowsocksX-NG',
                '~/Library/Caches/com.qiuyuzhou.ShadowsocksX-NG',
                '~/Library/LaunchAgents/com.qiuyuzhou.shadowsocksX-NG.http.plist',
                '~/Library/LaunchAgents/com.qiuyuzhou.shadowsocksX-NG.local.plist',
                '~/Library/Preferences/com.qiuyuzhou.ShadowsocksX-NG.plist',
              ]
end
