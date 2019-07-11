cask 'netron' do
  version '3.2.7'
  sha256 '264d1e79e0b37b770b53b66c2a7980ca5c7711345787cbb65ac7850f67e5a5c7'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
