cask 'netron' do
  version '3.0.3'
  sha256 '5bca67393e3e1ab6daaba899e2bb2a94cf937191f6355ca2c110912e57d3ca24'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
