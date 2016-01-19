cask 'gamesalad' do
  version '1.24.40'
  sha256 '8e9720269843d3fb721aea2fa89b9a9e3f325252957b70df1a47beafb7adb665'

  url "http://releases.gamesalad.com/creator/#{version}/GameSalad-Creator-#{version}.dmg"
  appcast 'https://gamesalad.com/download/studioUpdates',
          checkpoint: 'afdcd138c9353dbaa9e60f0bd50efd78e10558744d2e40834f2eca4e04697f15'
  name 'GameSalad'
  homepage 'https://gamesalad.com/'
  license :commercial

  app 'GameSalad.app'
end
