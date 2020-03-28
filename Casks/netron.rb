cask 'netron' do
  version '4.0.0'
  sha256 '5f378299337c02630c15aa1878bb9e6e59f50ab51da17d396f69ee670f4d4ea0'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
