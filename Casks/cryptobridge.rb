cask 'cryptobridge' do
  version '0.16.1'
  sha256 '80bcf27ccb1c1135fff93db0a37b299e8d5a815de6d189294bccce912b8eda44'

  url "https://github.com/CryptoBridge/cryptobridge-ui/releases/download/v#{version}/CryptoBridge-#{version}.dmg"
  appcast 'https://github.com/CryptoBridge/cryptobridge-ui/releases.atom'
  name 'CryptoBridge'
  homepage 'https://github.com/CryptoBridge/cryptobridge-ui'

  auto_updates true

  app 'CryptoBridge.app'
end
