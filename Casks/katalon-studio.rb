cask 'katalon-studio' do
  version '7.5.2'
  sha256 'ab1da61459e3e96b72ec7c08d5310c4b36be9d5cc847e475ada9601169e9de30'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
