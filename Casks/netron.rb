cask 'netron' do
  version '3.3.1'
  sha256 '0a79f7bd5e4dc2dc61845fbd96f0fedbe3e60af18d782fdd6dc07218f60d3903'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
