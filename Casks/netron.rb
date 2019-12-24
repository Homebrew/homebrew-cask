cask 'netron' do
  version '3.7.0'
  sha256 'f72e4f25416a63e031976dfde9fb57e0eaa18e87e4dbe6058539a5e54676d04b'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
