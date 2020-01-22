cask 'netron' do
  version '3.8.0'
  sha256 '6bdc562236a0d9f5accd273b26b96a4601cb1854a72bf7b11c4f52b537621c84'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
