cask 'cryptobridge' do
  version '0.18.8'
  sha256 'ae0c73cf00a5746a42150011e880b6606d1a51fa522b7c1409caf4cd7c5dab2f'

  url "https://github.com/CryptoBridge/cryptobridge-ui/releases/download/v#{version}/CryptoBridge-#{version}.dmg"
  appcast 'https://github.com/CryptoBridge/cryptobridge-ui/releases.atom'
  name 'CryptoBridge'
  homepage 'https://github.com/CryptoBridge/cryptobridge-ui'

  auto_updates true

  app 'CryptoBridge.app'
end
