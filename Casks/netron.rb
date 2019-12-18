cask 'netron' do
  version '3.6.4'
  sha256 '3114206b19057433d085c2e4ecd5c3e8a28ace1893adfb03cb861cbd717181cc'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
