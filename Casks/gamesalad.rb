cask 'gamesalad' do
  version '1.25.73'
  sha256 '22f1d752af5c8ade6a5cd2cd9d6b8c18f5f1788ebc9f9262be403c794a3c309e'

  url "http://releases.gamesalad.com/creator/#{version}/GameSalad-Creator-#{version}.dmg"
  appcast 'https://gamesalad.com/download/studioUpdates',
          checkpoint: 'dac41bfcb6f5076ce90047b1f7d6bacb97c4fed1e8f9d47cabbccebb2f0997bc'
  name 'GameSalad'
  homepage 'https://gamesalad.com/'

  app 'GameSalad.app'
end
