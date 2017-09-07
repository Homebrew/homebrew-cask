cask 'crypter' do
  version '3.0.0'
  sha256 '72f2c6a2ab93b538865c59c8940376a9f475517e82e0c582e751f9732c06926d'

  url "https://github.com/HR/Crypter/releases/download/v#{version}/Crypter-#{version}.dmg"
  appcast 'https://github.com/HR/Crypter/releases.atom',
          checkpoint: 'e0858d3f61c773b3c4d6bc567036ca3258875dd804657b36c41e04b4c64b0553'
  name 'Crypter'
  homepage 'https://github.com/HR/Crypter'

  app 'Crypter.app'
end
