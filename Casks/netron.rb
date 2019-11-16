cask 'netron' do
  version '3.5.5'
  sha256 'd54e992a8b596e430d5da77926ef94c0c6fa4d4164c031842f22580398b44f56'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
