cask 'cryptobridge' do
  version '0.12.6'
  sha256 'e6e9fbd2a5ec28f1fb7d86e716616e02f08b1488ee184bd33a8b28b8634876e2'

  url "https://github.com/CryptoBridge/cryptobridge-ui/releases/download/v#{version}/CryptoBridge-#{version}.dmg"
  appcast 'https://github.com/CryptoBridge/cryptobridge-ui/releases.atom',
          checkpoint: '40b68d90592165ccdaae0017f102d70eaa5eb3d54325c46c8cf76cfde965c74c'
  name 'CryptoBridge'
  homepage 'https://github.com/CryptoBridge/cryptobridge-ui'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'CryptoBridge.app'
end
