cask 'katalon-studio' do
  version '5.9.0'
  sha256 '3d914d1d97c7680cde3fb25615a4c46eb23a4fab9de0bb5554df8743943fb905'

  url "https://download.katalon.com/#{version}/Katalon_Studio.dmg"
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
