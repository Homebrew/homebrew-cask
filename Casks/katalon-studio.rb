cask 'katalon-studio' do
  version '7.2.1'
  sha256 'a8b1a63e20849890ec35c9c26c28dc56e4e97c4f3c5b58496e7f9df19500dc88'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
