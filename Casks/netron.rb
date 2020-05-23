cask 'netron' do
  version '4.1.9'
  sha256 '32c4953c988a0bcabe8f34e7a1775915f70e196850d67e45d58b8dc983bedb51'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
