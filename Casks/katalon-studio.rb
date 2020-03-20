cask 'katalon-studio' do
  version '7.2.8'
  sha256 '2d2b933e9cd4166da63d1314a57e5f6933be5274a56a7dd95c7bb68be24f9b88'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
