cask 'netron' do
  version '1.7.5'
  sha256 '42667678b6fc24cb7dfeef794265d21996ff035cd26b4110145950a61f2a1f3b'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '18318977269163664fc01f496aa67acbad9bf397dc7fbc063140b29942c256dd'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
