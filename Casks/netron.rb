cask 'netron' do
  version '1.1.4'
  sha256 'e7f6ed6f6e276c6145375b1d2167e6284817e7c3d64f21e8a4956ff1dc6ff031'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '1663dbf622200c976f92cd036b229bedbd47c7f46842b5dacdcc94f7ac81f7d6'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
