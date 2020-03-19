cask 'katalon-studio' do
  version '7.2.7'
  sha256 'b8be148411c118ad0d50a6d1d28fcb6fe35e881e5d17c7fe50f9d89d7aff1362'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
