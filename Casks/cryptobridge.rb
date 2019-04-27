cask 'cryptobridge' do
  version '0.18.2'
  sha256 'eac85f857b6b719691d14bc29182c840622652f4e4f0c50991fd549ce7acba44'

  url "https://github.com/CryptoBridge/cryptobridge-ui/releases/download/v#{version}/CryptoBridge-#{version}.dmg"
  appcast 'https://github.com/CryptoBridge/cryptobridge-ui/releases.atom'
  name 'CryptoBridge'
  homepage 'https://github.com/CryptoBridge/cryptobridge-ui'

  auto_updates true

  app 'CryptoBridge.app'
end
