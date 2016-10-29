cask 'shadowsocksx-ng' do
  version '1.3.1'
  sha256 'd74bd0c26fd33c653c8d7a2526a1680aee7563b308f333215337d811d79531d8'

  url "https://github.com/shadowsocks/ShadowsocksX-NG/releases/download/#{version}/ShadowsocksX-NG-#{version}.dmg"
  appcast 'https://github.com/shadowsocks/ShadowsocksX-NG/releases.atom',
          checkpoint: '6d3c185ac8307bbc6bced322ac0784f69ce6c2b1e1270674bf8e67f68754d741'
  name 'ShadowsocksX-NG'
  homepage 'https://github.com/shadowsocks/ShadowsocksX-NG'

  conflicts_with cask: 'shadowsocksx'

  app 'ShadowsocksX-NG.app'
end
