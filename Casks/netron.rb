cask 'netron' do
  version '4.2.4'
  sha256 '14f3d5ea84edbc35dc60461973a9d0f34b8843fba3fec3611461773c2eb7bfae'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
