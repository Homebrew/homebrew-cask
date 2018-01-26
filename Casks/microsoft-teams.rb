cask 'microsoft-teams' do
  version '1.0.00.34151'
  sha256 '9fcef200e161a6f658310f98f22426eb405155404df4599540e8c14bc4931246'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx',
          checkpoint: '7226846d98dad3978958848f5040a18d021c5cc4ad58de5479b1195c4096ac8e'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  app 'Microsoft Teams.app'
end
