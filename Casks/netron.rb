cask 'netron' do
  version '3.4.4'
  sha256 '12fc7aed62e8907d42c569e59d361c2da0ddc6c2e240ed61a87244456749fc46'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
