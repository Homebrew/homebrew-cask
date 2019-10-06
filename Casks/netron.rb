cask 'netron' do
  version '3.4.0'
  sha256 'fe4cae8ed134cee2ccd9cb053d1520b9ec2f65938376ef655fcae797e73035b5'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
