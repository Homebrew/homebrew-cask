cask 'cryptobridge' do
  version '0.2.14'
  sha256 '9ddebb00f2ecff80c8b8fb8cbcf168f813f98a34b98b78c14f83f420bfd73281'

  url "https://github.com/CryptoBridge/cryptobridge-ui/releases/download/v#{version}/CryptoBridge-#{version}.dmg"
  appcast 'https://github.com/CryptoBridge/cryptobridge-ui/releases.atom'
  name 'CryptoBridge'
  homepage 'https://github.com/CryptoBridge/cryptobridge-ui'

  auto_updates true

  app 'CryptoBridge.app'
end
