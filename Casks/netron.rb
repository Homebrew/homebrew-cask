cask 'netron' do
  version '3.7.5'
  sha256 '0388ae58ec8477f95b4b7f92e26a1e8334d0b0bf6a4f26be1968eb3192f54d5b'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
