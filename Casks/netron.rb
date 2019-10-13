cask 'netron' do
  version '3.4.2'
  sha256 '2efd9026343ba5fdb8f3526f85ef92925ce559c7d2bc537ae6fb1ba9d9b50c20'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
