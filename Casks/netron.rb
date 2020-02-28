cask 'netron' do
  version '3.9.4'
  sha256 'cb8a41fab5d113bb4dc600f033ac6ec63743097c964987aefc708de1c5d69134'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
