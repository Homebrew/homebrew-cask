cask 'netron' do
  version '1.1.4'
  sha256 'e7f6ed6f6e276c6145375b1d2167e6284817e7c3d64f21e8a4956ff1dc6ff031'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '7517e1dd10590f46a46f62a67d2714fae890c7b20a02f2730b7d4b8d6a15a982'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
