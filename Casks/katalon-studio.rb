cask 'katalon-studio' do
  version '6.1.2'
  sha256 'df651b9e044c7ecd6d6f4dc68a41869b126f1ee3b80412a096e4805bf205415d'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
