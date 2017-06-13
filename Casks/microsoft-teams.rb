cask 'microsoft-teams' do
  version '1.0.00.14454'
  sha256 'f4cd9a151746aa1c85aa5a41c112c7ab3ca9094888971c893484a68b0d386bc2'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx',
          checkpoint: 'df65b75e8bf1a602351a7ab980e12b41edba7d9740f39807ae648d73962621dd'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  app 'Microsoft Teams.app'
end
