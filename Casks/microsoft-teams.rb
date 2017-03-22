cask 'microsoft-teams' do
  version '0.7.00.5204'
  sha256 '932ee1d3c5d072d5752918979105f3d1932a8df80c362d716c64df65dab372b1'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx',
          checkpoint: '3396c9243e4d761c5f8941c7f1b66da5e7c069f7733cf49c66dd86953296c736'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  app 'Microsoft Teams.app'
end
