cask 'netron' do
  version '3.8.8'
  sha256 'c1a20ddaf04d720a65721e9b61e01c81b7a17efc905738438b854fe86c318029'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
