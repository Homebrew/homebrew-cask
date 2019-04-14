cask 'netron' do
  version '3.0.1'
  sha256 '25131521dbf5f5427eaa970c96243a88c300d3945cf011766f77558024a8bcae'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
