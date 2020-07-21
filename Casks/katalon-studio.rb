cask 'katalon-studio' do
  version '7.6.1'
  sha256 '5fcc1e609e718ec54ac53e83ac52d6c7b97c9dd97b7f541f1e96e7e82539e1fa'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
