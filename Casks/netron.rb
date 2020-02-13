cask 'netron' do
  version '3.9.0'
  sha256 '3b09c08390942dbbf3dda654ea2ebe35ffd70b249026518584bfc5bbee85f730'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
