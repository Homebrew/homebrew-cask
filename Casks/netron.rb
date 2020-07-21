cask 'netron' do
  version '4.4.1'
  sha256 '0dd0562677bf9fd22633ae512190b2ef0429ea878175d6a7ab0dbab25fb710ec'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
