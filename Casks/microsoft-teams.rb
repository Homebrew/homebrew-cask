cask 'microsoft-teams' do
  version '1.1.00.11551'
  sha256 '971b4cf18b4f8d8578d0e762b489ccf0a8f999174c0e2d4d2df11ee7516a0980'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx',
          checkpoint: '9114c66e9c6d65128177ed94a416ab951048559864ed67c916e853a54ab2c5a5'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  app 'Microsoft Teams.app'
end
