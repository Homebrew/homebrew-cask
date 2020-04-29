cask 'katalon-studio' do
  version '7.4.3'
  sha256 '251e98c46aec338b486ab5e6713318eb675448bb930e112fa33cc6da99e7a3c1'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
