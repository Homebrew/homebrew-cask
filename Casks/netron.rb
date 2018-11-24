cask 'netron' do
  version '2.6.1'
  sha256 'fef92c6dcaba0a982796f85bb0b7db0fb1ec401d9e084e0d9f53f47dabcc1d50'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
