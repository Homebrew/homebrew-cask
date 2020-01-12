cask 'netron' do
  version '3.7.6'
  sha256 '089a28dd33306f37a738a70fe265d09b34a2747489fc80b83dfdd3cc74cd3a7a'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
