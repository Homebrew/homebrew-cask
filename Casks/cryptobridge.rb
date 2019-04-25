cask 'cryptobridge' do
  version '0.18.0'
  sha256 'a0c7610b2da29f2fa65f45222bd667c0e2ba5d1e366b4650fed4fd39ab0e8e30'

  url "https://github.com/CryptoBridge/cryptobridge-ui/releases/download/v#{version}/CryptoBridge-#{version}.dmg"
  appcast 'https://github.com/CryptoBridge/cryptobridge-ui/releases.atom'
  name 'CryptoBridge'
  homepage 'https://github.com/CryptoBridge/cryptobridge-ui'

  auto_updates true

  app 'CryptoBridge.app'
end
