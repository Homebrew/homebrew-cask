cask 'netron' do
  version '4.1.1'
  sha256 '1a13cf7a09b22ce12ea1157788d885309a2cde1bcae2f0954e78eac85baab4ce'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
