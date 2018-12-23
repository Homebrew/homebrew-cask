cask 'netron' do
  version '2.7.6'
  sha256 'c9554c694298dd8da7116496ee7f14dd614ece0851ac5d04c5f0f57d6c6044a0'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
