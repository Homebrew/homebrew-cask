cask 'netron' do
  version '4.2.6'
  sha256 'b7c358d69532bc35726a5ce62e80c2e082db0af78b8f50cd5699ec48eae59ebb'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
