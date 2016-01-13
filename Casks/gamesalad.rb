cask 'gamesalad' do
  version '1.24.40'
  sha256 '8e9720269843d3fb721aea2fa89b9a9e3f325252957b70df1a47beafb7adb665'

  url "http://releases.gamesalad.com/creator/#{version}/GameSalad-Creator-#{version}.dmg"
  appcast 'https://gamesalad.com/download/studioUpdates',
          :checkpoint => '49c881400dbdfd43a46ba6c137c9fc3c2db4d2edf11278b50bbeb856b9d42404'
  name 'GameSalad'
  homepage 'https://gamesalad.com/'
  license :commercial

  app 'GameSalad.app'
end
