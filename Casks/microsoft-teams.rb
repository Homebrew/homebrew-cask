cask 'microsoft-teams' do
  version '1.1.00.17551'
  sha256 '44c8ba225c46a5089cbb02815839c9d067730c1a11f93809ba6437b8507df69c'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  app 'Microsoft Teams.app'
end
