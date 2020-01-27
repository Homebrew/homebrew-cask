cask 'netron' do
  version '3.8.1'
  sha256 'ce00b0abdc480e7fc26620e163519fe3a0b402e5acfb9c3f2fbec63f9c49c06b'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
