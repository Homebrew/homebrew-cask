cask 'netron' do
  version '4.3.5'
  sha256 '5ecbc2f279a4a509c7500a1f660cf258fa6d5e1cc8ad3cf554f4b972ae774c0b'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
