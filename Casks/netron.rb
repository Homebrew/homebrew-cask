cask 'netron' do
  version '3.3.7'
  sha256 '767992655023aa5671c84c7086807942dda2646ec82b548fe64853b07a2705f1'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
