cask 'cryptobridge' do
  version '0.3.0'
  sha256 '3293b32d1138a5b94aa2c22bce8d2c6dfbc0b78a541be8da02b9e4ea8324f18d'

  url "https://github.com/CryptoBridge/cryptobridge-ui/releases/download/v#{version}/CryptoBridge-#{version}.dmg"
  appcast 'https://github.com/CryptoBridge/cryptobridge-ui/releases.atom'
  name 'CryptoBridge'
  homepage 'https://github.com/CryptoBridge/cryptobridge-ui'

  auto_updates true

  app 'CryptoBridge.app'
end
