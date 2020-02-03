cask 'netron' do
  version '3.8.6'
  sha256 '864cef7e398c6b46c3b5a5aaba35cd9d0b6d509803b0822b36250eadd06c683a'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
