cask 'netron' do
  version '3.2.3'
  sha256 'c6d7932969bb655edecaa4b3b10da4bd543243aafda59f37f066524c131abe43'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
