cask 'netron' do
  version '4.3.0'
  sha256 'a9a4d43864a322644ded0b27ba7760356ea1fa61c5ee3f393dff1c4e6aacb2eb'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
