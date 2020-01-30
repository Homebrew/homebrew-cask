cask 'netron' do
  version '3.8.3'
  sha256 'a21de52852c7f2c1c639c63147aa65561ab480a1d74afecc892f3c41b3befbf0'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
