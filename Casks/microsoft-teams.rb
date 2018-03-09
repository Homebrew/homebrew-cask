cask 'microsoft-teams' do
  version '1.1.00.5851'
  sha256 '0bd5d95659b197349817a1721ee281d3b47760028acaf00a62804e9f670765de'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx',
          checkpoint: '5ec40d54c7a4a6087ea574c97c14dce016313ff309a60babf632d33543b57d10'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  app 'Microsoft Teams.app'
end
