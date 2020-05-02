cask 'netron' do
  version '4.1.3'
  sha256 '672e58afe2d7d6587754d3f3dc87b10afc9de145421fd985e6797ba95867b4fc'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
