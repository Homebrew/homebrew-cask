cask 'netron' do
  version '3.2.9'
  sha256 'f50975b29e7f62eed0de86eb888c6ff17265cd1a423ac583289b8601ebb006f3'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
