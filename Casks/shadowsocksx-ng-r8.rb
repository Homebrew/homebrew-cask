cask 'shadowsocksx-ng-r8' do
  version '1.4.3-R8-build3'
  sha256 'f0f85355b7447d21105cf22f0d5f80a08c4d81841d7d45bfdc6090cd01a9f013'

  url "https://github.com/qinyuhang/ShadowsocksX-NG-R/releases/download/#{version}/ShadowsocksX-NG-R8.dmg"
  name 'ShadowsocksX-NG-R8'
  homepage 'https://github.com/qinyuhang/ShadowsocksX-NG-R'

  conflicts_with cask: 'shadowsocksx-ng'
  depends_on macos: '>= :el_capitan'

  app 'ShadowsocksX-NG-R8.app'

  uninstall delete: '/Library/Application Support/ShadowsocksX-NG',
            quit:   'com.qiuyuzhou.ShadowsocksX-NG'

  zap trash: [
               '~/.ShadowsocksX-NG',
               '~/Library/Application Support/ShadowsocksX-NG',
               '~/Library/Caches/com.qiuyuzhou.ShadowsocksX-NG',
               '~/Library/Preferences/com.qiuyuzhou.ShadowsocksX-NG.plist',
             ]
end
