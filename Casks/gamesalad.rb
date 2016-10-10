cask 'gamesalad' do
  version '1.25.61'
  sha256 '758f7c5098952d1f98b08b688889e639f09db3155123afec674fd55f2fb5c25c'

  url "http://releases.gamesalad.com/creator/#{version}/GameSalad-Creator-#{version}.dmg"
  appcast 'https://gamesalad.com/download/studioUpdates',
          checkpoint: 'ea3cec48ad05396ea2e2bfac2e49977292f0d649f461055682dc52730cb4b431'
  name 'GameSalad'
  homepage 'https://gamesalad.com/'

  app 'GameSalad.app'
end
