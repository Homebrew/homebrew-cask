cask 'gamesalad' do
  version '1.25.85'
  sha256 'd356da298c456160a8caee224e042b48c128d089d2b7aa528dd0fd7a94bd5e99'

  url "http://releases.gamesalad.com/creator/#{version}/GameSalad-Creator-#{version}.dmg"
  appcast 'https://gamesalad.com/download/studioUpdates',
          checkpoint: 'ffdb065bbedb2011e1616a48ac6f261e4279e02f9c7505ac2db8376b30b3f7f1'
  name 'GameSalad'
  homepage 'https://gamesalad.com/'

  app 'GameSalad.app'
end
