cask 'crypter' do
  version '4.0.0'
  sha256 '421f412d95010cc5cce8b837dc44649c1e83c8734e3196aa267b25092f95014d'

  url "https://github.com/HR/Crypter/releases/download/v#{version}/Crypter-#{version}.dmg"
  appcast 'https://github.com/HR/Crypter/releases.atom'
  name 'Crypter'
  homepage 'https://github.com/HR/Crypter'

  app 'Crypter.app'
end
