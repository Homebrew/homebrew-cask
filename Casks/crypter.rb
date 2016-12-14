cask 'crypter' do
  version '2.0.0'
  sha256 '51dea8a15d9d0cc3d5c32e9e175970b2208f5d1c1aa320819a370ae25eb34542'

  url "https://github.com/HR/Crypter/releases/download/v#{version}/Crypter-#{version}.dmg"
  name 'Crypter'
  homepage 'https://github.com/HR/Crypter'

  app 'Crypter.app'
end
