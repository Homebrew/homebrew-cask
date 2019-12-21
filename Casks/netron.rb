cask 'netron' do
  version '3.6.8'
  sha256 '984b23d524f2789df62f51ebf334943a5309270bdaf8e30e704a2b94ad470dc5'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
