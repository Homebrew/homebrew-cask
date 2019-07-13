cask 'netron' do
  version '3.2.8'
  sha256 'e7ef83601a198af3668dea381c3921a38c61e144aa7732a5ad1a0d8905b36d35'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
