cask 'netron' do
  version '3.6.6'
  sha256 '69e6ded924b565c23ea08ee2ff698a4e16429e4793ffaa010e44ca9bf1fa314c'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
