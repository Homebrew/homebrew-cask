cask 'shadowsocksx-ng' do
  version '1.5.1'
  sha256 '01925203cfeac54e580fbde10f896f54bf0eb5edea28ccbb7cf33c55b51ef9d9'

  url "https://github.com/shadowsocks/ShadowsocksX-NG/releases/download/v#{version}/ShadowsocksX-NG.#{version}.zip"
  appcast 'https://github.com/shadowsocks/ShadowsocksX-NG/releases.atom',
          checkpoint: 'c8b1338ed43eaa7aea4d700c7729a880d00c2b42bb5bbee26531b2d41f0fba97'
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
