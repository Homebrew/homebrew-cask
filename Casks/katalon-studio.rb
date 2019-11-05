cask 'katalon-studio' do
  version '7.0.6'
  sha256 '9787e33b90a094e83f7819ee9d3fa28d1fa31d4e5fb2b43a1049ee12eddb57cf'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
