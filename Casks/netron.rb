cask 'netron' do
  version '3.0.7'
  sha256 'e4cac435cf16d36f4444e25b9846fa7bfe61cf130a9e6fd50d5698df71942a16'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
