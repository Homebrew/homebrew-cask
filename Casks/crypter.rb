cask 'crypter' do
  version '2.0.0'
  sha256 '51dea8a15d9d0cc3d5c32e9e175970b2208f5d1c1aa320819a370ae25eb34542'

  url "https://github.com/HR/Crypter/releases/download/v#{version}/Crypter-#{version}.dmg"
  appcast 'https://github.com/HR/Crypter/releases.atom',
          checkpoint: 'd0dbab1db97560147c7e706bd4dbadd8095d33937e8749d67f17bf13489f42ef'
  name 'Crypter'
  homepage 'https://github.com/HR/Crypter'

  app 'Crypter.app'
end
