cask 'netron' do
  version '3.9.1'
  sha256 '8c31ce2abf6e6576985529c69d74326075fc17a8b6aa9d0523fd3eb71838f715'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
