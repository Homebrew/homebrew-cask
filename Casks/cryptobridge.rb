cask 'cryptobridge' do
  version '0.14.0'
  sha256 'cfe6e0bd24385927c94fd6eeb0ce91ee6b32703d438933139004d39e749972d5'

  url "https://github.com/CryptoBridge/cryptobridge-ui/releases/download/v#{version}/CryptoBridge-#{version}.dmg"
  appcast 'https://github.com/CryptoBridge/cryptobridge-ui/releases.atom'
  name 'CryptoBridge'
  homepage 'https://github.com/CryptoBridge/cryptobridge-ui'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'CryptoBridge.app'
end
