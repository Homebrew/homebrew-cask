cask 'netron' do
  version '4.1.8'
  sha256 '44f12ac28ebef8ad5b9f686c33c401242b8662488b33ab9c2618dab012eb8552'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
