cask 'netron' do
  version '3.5.9'
  sha256 'ff328ac811ff5dbd6f2922a1afb52e475bde3a84150c9fffdfc4dc6f1dc71cd5'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
