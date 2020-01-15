cask 'netron' do
  version '3.7.8'
  sha256 'e713d01c544e26c98d7a0655024305b7728fc75dda66dc3665cb5ed84b27f13a'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
