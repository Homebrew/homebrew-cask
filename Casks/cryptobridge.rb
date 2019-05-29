cask 'cryptobridge' do
  version '0.18.4'
  sha256 '20f79cfc4c808faf301c7f9fb9ae076a6c7de9fd9602d92473a4af322dce0008'

  url "https://github.com/CryptoBridge/cryptobridge-ui/releases/download/v#{version}/CryptoBridge-#{version}.dmg"
  appcast 'https://github.com/CryptoBridge/cryptobridge-ui/releases.atom'
  name 'CryptoBridge'
  homepage 'https://github.com/CryptoBridge/cryptobridge-ui'

  auto_updates true

  app 'CryptoBridge.app'
end
