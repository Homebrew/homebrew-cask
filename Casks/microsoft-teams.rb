cask 'microsoft-teams' do
  version '1.2.00.1761'
  sha256 '04d01a66c1890efb8e2d58bee70169feed9ff80a4caa2d5f8d9668921b9df806'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  app 'Microsoft Teams.app'
end
