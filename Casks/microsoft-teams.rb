cask 'microsoft-teams' do
  version '1.0.00.13152'
  sha256 '02a9f6542437431d6f1e902ec0fe713fca2c985c27537e7989a9119e74d49c86'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx',
          checkpoint: '94fa706f6c8ad65d63d865105826dceb14dc4cbc12710003269551ec5c478926'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  app 'Microsoft Teams.app'
end
