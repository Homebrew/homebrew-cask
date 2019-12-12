cask 'netron' do
  version '3.6.2'
  sha256 'b29282de9d1ea8dbd78bc204d1f902a0c85fb5a52bb539889add5088934400de'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
