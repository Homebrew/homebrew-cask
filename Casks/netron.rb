cask 'netron' do
  version '2.3.3'
  sha256 '0993084698ff0ff41cb9418f4bceea6f1443ed4792ecbadabca6c5f792bc3cf8'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
