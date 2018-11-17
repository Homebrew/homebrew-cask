cask 'netron' do
  version '2.5.5'
  sha256 '006e12ad5ab2da99d317db1a541ec8b90da504b86fa24c757d9df8765f160838'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
