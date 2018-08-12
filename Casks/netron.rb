cask 'netron' do
  version '1.9.9'
  sha256 '68146717ff8a584ff24c3791e3ffe873a6e6c401674253861ff0dbd5507f5b88'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
