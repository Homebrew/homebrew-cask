cask 'shadowsocksx-ng' do
  version '1.4'
  sha256 'a6b276e40917d3fd8a55fabcf732d3f7577430ac36790f3e062a3f95f4bf086c'

  url "https://github.com/shadowsocks/ShadowsocksX-NG/releases/download/v#{version}/ShadowsocksX-NG-#{version}.zip"
  appcast 'https://github.com/shadowsocks/ShadowsocksX-NG/releases.atom',
          checkpoint: 'f94e6e5c88995dbdd28751ded6491f0a43b781af2b13d311d71b3fc6a21bbeba'
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
