cask 'gamesalad' do
  version '1.25.80'
  sha256 'd0b40aaf79328b0d06dc42997e3b108de84c068e8e0e9efbe176e57b66105ebe'

  url "http://releases.gamesalad.com/creator/#{version}/GameSalad-Creator-#{version}.dmg"
  appcast 'https://gamesalad.com/download/studioUpdates',
          checkpoint: '82f4d5166317d2e02c2b883d2e3c358a436d8bcf70f0d255c04338612cb0720c'
  name 'GameSalad'
  homepage 'https://gamesalad.com/'

  app 'GameSalad.app'
end
