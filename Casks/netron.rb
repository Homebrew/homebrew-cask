cask 'netron' do
  version '4.2.8'
  sha256 'c6710d6d984249867a056f28c256a411a190151513d7f3c370f318bbd1d83015'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
