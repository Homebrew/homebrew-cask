cask 'netron' do
  version '3.2.1'
  sha256 '81e3aad7812da8a310258f5b51f1b321a0c3082be7e12350e9d705e5c524b96e'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
