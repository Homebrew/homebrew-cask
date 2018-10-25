cask 'netron' do
  version '2.3.4'
  sha256 '3cb6a5de9039bc07596b3f9d1ca9912101445c58066852fbfbc6373acbb6bd78'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
