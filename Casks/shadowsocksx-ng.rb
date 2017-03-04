cask 'shadowsocksx-ng' do
  version '1.3.2'
  sha256 '25bd85be1e287465e03236623c36f8cd7a03ef2218e667d1f74e0bf1fbed7b0a'

  url "https://github.com/shadowsocks/ShadowsocksX-NG/releases/download/#{version}/ShadowsocksX-NG-#{version}.zip"
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
