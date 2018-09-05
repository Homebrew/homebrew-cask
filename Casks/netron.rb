cask 'netron' do
  version '2.0.9'
  sha256 '1cadfcb6ec8f9a744d27cb0f103c9849551d38106b06e41b9018eecfbc878a1e'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
