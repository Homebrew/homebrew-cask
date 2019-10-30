cask 'katalon-studio' do
  version '7.0.5'
  sha256 '94dece4b97bcf259ede8a18d151d23dbb9ef592bf64c4f164973acf7be8001ad'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
