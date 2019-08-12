cask 'katalon-studio' do
  version '6.3.0'
  sha256 '2bd3cf8595aec7e0c52449dd9a025f3077f4a05b1cd44f827cf0a311b015eb33'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
