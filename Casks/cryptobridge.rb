cask 'cryptobridge' do
  version '0.2.11'
  sha256 '2a0a315889f67eb76cc0583107ee0acd7dda4aea5ae307898f97c8a088507fa4'

  url "https://github.com/CryptoBridge/cryptobridge-ui/releases/download/v#{version}/CryptoBridge-#{version}.dmg"
  appcast 'https://github.com/CryptoBridge/cryptobridge-ui/releases.atom'
  name 'CryptoBridge'
  homepage 'https://github.com/CryptoBridge/cryptobridge-ui'

  auto_updates true

  app 'CryptoBridge.app'
end
