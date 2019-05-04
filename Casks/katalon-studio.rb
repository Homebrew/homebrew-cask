cask 'katalon-studio' do
  version '6.1.3'
  sha256 '1c7545424645ef88f8efc7a631045d68f45499fb62fefe667e483372ea8d245c'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
