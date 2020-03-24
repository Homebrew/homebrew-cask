cask 'netron' do
  version '3.9.9'
  sha256 '482efe24ae041330c04cb792e1cc069959377fbd92cc671d39c7abb51b81f02b'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
