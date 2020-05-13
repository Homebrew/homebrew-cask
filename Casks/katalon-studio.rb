cask 'katalon-studio' do
  version '7.4.6'
  sha256 'fbf172e3451a9cf256a3587b9a8c581db3f40d8b8d90c93884bd4cb2e27d242b'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
