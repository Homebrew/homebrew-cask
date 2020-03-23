cask 'katalon-studio' do
  version '7.2.9'
  sha256 'a84cd1541aea7ee70ff313d7e226027c77ce1b0df7d437d34e01d95d0242db55'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
