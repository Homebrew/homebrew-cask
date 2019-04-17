cask 'katalon-studio' do
  version '6.1.1'
  sha256 '8f3e33d32ca20014f232287cb45e4a09ab44a3077dbc7912b25d57b5b5688c48'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
