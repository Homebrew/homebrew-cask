cask 'netron' do
  version '2.6.5'
  sha256 '75269825ce41285b3334c88089dd2a0d99c0a78cd5a388c2c4084135d42d15d7'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
