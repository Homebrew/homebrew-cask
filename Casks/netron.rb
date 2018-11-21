cask 'netron' do
  version '2.5.7'
  sha256 '0c25fb5c8f54b77bc1205a68ffff1a32e7fbdd7d5eccdcc27bf2fee8ea42f200'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
