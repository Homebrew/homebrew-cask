cask 'microsoft-teams' do
  version '1.0.00.16451'
  sha256 'aea55301c8b16abc7a004f6cf1b94471f0b28de198cae9c9f7894e546944ef10'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx',
          checkpoint: '5e08eeb6a34c82633fd25ea457054aca34fe18c09e6cbc6d0909f46439f06b69'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  app 'Microsoft Teams.app'
end
