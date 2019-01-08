cask 'netron' do
  version '2.7.9'
  sha256 '166549c7dad92d9407bfeb8e4b80be18dd5c9f475ab3a4fe36fbafa5e04503d2'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
