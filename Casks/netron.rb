cask 'netron' do
  version '2.6.9'
  sha256 'abb7eecfee72f2ac6658f61e3bf99879918d04fe23764bc6e4a9688d1ff1d378'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
