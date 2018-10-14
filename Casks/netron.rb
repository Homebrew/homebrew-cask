cask 'netron' do
  version '2.2.7'
  sha256 '81b975ba1a0f50793b44dc75287e54218aa58c13ceb8c2c834871ae59f9e4e08'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
