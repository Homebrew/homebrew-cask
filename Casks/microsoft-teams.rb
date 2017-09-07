cask 'microsoft-teams' do
  version '1.0.00.19452'
  sha256 '4b13e4ac981e88fb8be520b357f29eb5ad1ef569c7a4d5381c6fe9b32ab91851'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx',
          checkpoint: 'f7a0012359bba498872b4caa27701ad1612c3b81d2beb67930bded38984e8b4d'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  app 'Microsoft Teams.app'
end
