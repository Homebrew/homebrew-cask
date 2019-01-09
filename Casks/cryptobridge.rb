cask 'cryptobridge' do
  version '0.15.2'
  sha256 'a7fe45d5c9bd1f97ccdf549aa4f0f02cb675234d1287f1aeb330fc3fc20240d4'

  url "https://github.com/CryptoBridge/cryptobridge-ui/releases/download/v#{version}/CryptoBridge-#{version}.dmg"
  appcast 'https://github.com/CryptoBridge/cryptobridge-ui/releases.atom'
  name 'CryptoBridge'
  homepage 'https://github.com/CryptoBridge/cryptobridge-ui'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'CryptoBridge.app'
end
