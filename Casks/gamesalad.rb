cask 'gamesalad' do
  version '1.24.42'
  sha256 '6014804d408b0cdb731b1dd1c4ca9e2071c197763a69404bd333d2db510259dc'

  url "http://releases.gamesalad.com/creator/#{version}/GameSalad-Creator-#{version}.dmg"
  appcast 'https://gamesalad.com/download/studioUpdates',
          checkpoint: '0db18d0127bf89e9e7db36ba8ea11b7c8bdb13ddae296546f8f50a609b1d3cbd'
  name 'GameSalad'
  homepage 'https://gamesalad.com/'
  license :commercial

  app 'GameSalad.app'
end
