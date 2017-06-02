cask 'microsoft-teams' do
  version '1.0.00.13751'
  sha256 'fe1b99af080630e45413d74dbcbabf19087dae87e808079daf786bf9ff7c85fa'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx',
          checkpoint: '8511fd80c9976fff63b3d2cba2d1a9dae922189ebccca8f793f52af53bee51ea'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  app 'Microsoft Teams.app'
end
