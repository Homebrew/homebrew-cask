cask 'cryptobridge' do
  version '0.16.5'
  sha256 '25996b6c4728ceaf1b789da691e2e35b5e2dd385241aa6af7568fe77ff104524'

  url "https://github.com/CryptoBridge/cryptobridge-ui/releases/download/v#{version}/CryptoBridge-#{version}.dmg"
  appcast 'https://github.com/CryptoBridge/cryptobridge-ui/releases.atom'
  name 'CryptoBridge'
  homepage 'https://github.com/CryptoBridge/cryptobridge-ui'

  auto_updates true

  app 'CryptoBridge.app'
end
