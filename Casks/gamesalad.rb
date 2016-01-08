cask 'gamesalad' do
  version '1.24.40'
  sha256 '8e9720269843d3fb721aea2fa89b9a9e3f325252957b70df1a47beafb7adb665'

  url "http://releases.gamesalad.com/creator/#{version}/GameSalad-Creator-#{version}.dmg"
  appcast 'https://gamesalad.com/download/studioUpdates',
          :sha256 => 'afbb3a8596b9569dd86f59cfd8d44a4837d2a54a7cbd7eb2b29b651dbf98d014'
  name 'GameSalad'
  homepage 'https://gamesalad.com/'
  license :commercial

  app 'GameSalad.app'
end
