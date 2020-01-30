cask 'netron' do
  version '3.8.2'
  sha256 'e1ff35c790f36f7cf65f97fdc30d74d92e886335a74bf72448c3f5c2e24d861d'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
