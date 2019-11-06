cask 'netron' do
  version '3.5.1'
  sha256 '307eb4f42c74a36f24ce5f53d44c272657a91fa9c3510c9a604a93d52de876cd'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
