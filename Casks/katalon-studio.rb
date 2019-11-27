cask 'katalon-studio' do
  version '7.1.0'
  sha256 '4bad1804a5567c29862826d27b76f8550600964bac591dbe41b262dca1eb3c50'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
