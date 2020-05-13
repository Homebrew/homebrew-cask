cask 'katalon-studio' do
  version '7.5.0'
  sha256 '2c9c34507e4631ef9648bcd9fa5b79d1e86f765c67db243b0cc86a61a7c62910'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
