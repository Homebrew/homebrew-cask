cask 'katalon-studio' do
  version '7.0.2'
  sha256 'e200b3201bc39e0bebc6db28d32ad8e9f714e35d005626b50834bf40366ef4c3'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
