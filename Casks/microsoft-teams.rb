cask 'microsoft-teams' do
  version '0.6.00.29902'
  sha256 'bbd22672782acb78daea001e847cd2254de47bf5b255487cce5758c3298105dd'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  app 'Microsoft Teams.app'
end
