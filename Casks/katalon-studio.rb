cask 'katalon-studio' do
  version '7.2.5'
  sha256 '04d36df59a2e88b96baccf98193af0327376369673704adfae7bd42880a11c47'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
