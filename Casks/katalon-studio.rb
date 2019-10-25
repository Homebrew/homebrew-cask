cask 'katalon-studio' do
  version '7.0.3'
  sha256 'bf7735446d2576e7a4aa73effb29c4ac061199566be3d5b9c640c8a076a3e1a6'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
