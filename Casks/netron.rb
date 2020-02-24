cask 'netron' do
  version '3.9.2'
  sha256 '80a237da24b859cd82f6b1aada5bdd73ece89d3da766348a9451d59039fc2af6'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
