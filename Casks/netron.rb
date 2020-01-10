cask 'netron' do
  version '3.7.4'
  sha256 'e9b38d5b8f33964b192b9130af8271f299bfc43bed0cc8996b8c34c7733f1c9a'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
