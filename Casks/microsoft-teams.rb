cask 'microsoft-teams' do
  version '0.6.00.34901'
  sha256 '2ae3687a2280117ff83f0bacbf8a08db1bee81ae26bc8eb82faa38436550a04b'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx',
          checkpoint: '9d8d5bc2d1a460e746f656038c637785126990e10fbf0709e3cadd8e83b7b750'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  app 'Microsoft Teams.app'
end
