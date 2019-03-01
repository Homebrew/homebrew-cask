cask 'cryptobridge' do
  version '0.16.4'
  sha256 'e9e92e8f1e841eb09cb5e791d7cde7b7c4d4ea7b6631fdd443a04617a6cc1736'

  url "https://github.com/CryptoBridge/cryptobridge-ui/releases/download/v#{version}/CryptoBridge-#{version}.dmg"
  appcast 'https://github.com/CryptoBridge/cryptobridge-ui/releases.atom'
  name 'CryptoBridge'
  homepage 'https://github.com/CryptoBridge/cryptobridge-ui'

  auto_updates true

  app 'CryptoBridge.app'
end
