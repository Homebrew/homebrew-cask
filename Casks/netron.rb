cask 'netron' do
  version '2.0.5'
  sha256 '4e45e4b96c460a38edaa517e2f823684c7965a2194a974f88b9d8f2bfa1845c0'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
