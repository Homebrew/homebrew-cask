cask 'netron' do
  version '3.8.7'
  sha256 'ec47e9120858785955fd94696e7cdf244d74ff7907f281976c8eaf92134981bb'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
