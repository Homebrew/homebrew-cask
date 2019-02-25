cask 'cryptobridge' do
  version '0.15.6'
  sha256 'c6f24fb77a71477b5aa5c707fd85594b7a563cacb51e618c96bf3224d5f9ac33'

  url "https://github.com/CryptoBridge/cryptobridge-ui/releases/download/v#{version}/CryptoBridge-#{version}.dmg"
  appcast 'https://github.com/CryptoBridge/cryptobridge-ui/releases.atom'
  name 'CryptoBridge'
  homepage 'https://github.com/CryptoBridge/cryptobridge-ui'

  auto_updates true

  app 'CryptoBridge.app'
end
