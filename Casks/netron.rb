cask 'netron' do
  version '3.9.6'
  sha256 '6339fe3c2d48e1b2ee0d54f02522c00e5725ee8fee6fd7840657fd7a131afcbf'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
