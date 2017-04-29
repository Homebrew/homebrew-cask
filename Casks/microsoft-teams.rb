cask 'microsoft-teams' do
  version '1.0.00.10951'
  sha256 'ed19b0efcb0e68ae3d8b6966e60e2090b20da09137462c94a15981ab022874f5'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx',
          checkpoint: 'd249664a8f614c9f7ee3f7fb4743dc11eb451c64963b5e7ac0a48a8bd496e07b'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  app 'Microsoft Teams.app'
end
