cask 'cryptobridge' do
  version '0.16.7'
  sha256 '968f933109a0f9ff81124eafe549aecfbb712ee1c174054248a398d9295a8e05'

  url "https://github.com/CryptoBridge/cryptobridge-ui/releases/download/v#{version}/CryptoBridge-#{version}.dmg"
  appcast 'https://github.com/CryptoBridge/cryptobridge-ui/releases.atom'
  name 'CryptoBridge'
  homepage 'https://github.com/CryptoBridge/cryptobridge-ui'

  auto_updates true

  app 'CryptoBridge.app'
end
