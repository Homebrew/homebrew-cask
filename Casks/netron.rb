cask 'netron' do
  version '3.0.8'
  sha256 'a1a65006f696ab218b29d7cb09e4de59a0b5ab09e230031e190347fb501d3df2'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
