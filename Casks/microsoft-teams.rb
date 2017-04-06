cask 'microsoft-teams' do
  version '1.0.00.8201'
  sha256 '01e8d6d19a1d50e7fe06dbfb1c4cd78df1657b361cec3751fa83a885bfef6909'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx',
          checkpoint: 'd93cfc3109bab479ca409d6a1d9623acd4e33e7d116db6f693d19134b77c1d95'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  app 'Microsoft Teams.app'
end
