cask 'netron' do
  version '2.0.1'
  sha256 'e07c3a7ea7d0ef0a8edbf0714189f52c5de4de1939b92ab991e7003e4bce1bc1'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
