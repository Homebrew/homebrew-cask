cask 'netron' do
  version '3.5.2'
  sha256 'b5b6a0abc14ab519849523eacfcc63d45dd3449431f6ae43553e3f286b2e68ba'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
