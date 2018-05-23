cask 'microsoft-teams' do
  version '1.1.00.11551'
  sha256 '5239931c11303c89c10646600b01a847581f6e5d21974c847e29d04475cbcd93'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx',
          checkpoint: '9114c66e9c6d65128177ed94a416ab951048559864ed67c916e853a54ab2c5a5'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  app 'Microsoft Teams.app'
end
