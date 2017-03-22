cask 'crypter' do
  version '3.0.0'
  sha256 '72f2c6a2ab93b538865c59c8940376a9f475517e82e0c582e751f9732c06926d'

  url "https://github.com/HR/Crypter/releases/download/v#{version}/Crypter-#{version}.dmg"
  appcast 'https://github.com/HR/Crypter/releases.atom',
          checkpoint: 'c27754561a4ceaee39898c4eb5d52062c8d4b4237f32d55132a602fdfd884450'
  name 'Crypter'
  homepage 'https://github.com/HR/Crypter'

  app 'Crypter.app'
end
