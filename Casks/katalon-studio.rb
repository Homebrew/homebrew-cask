cask 'katalon-studio' do
  version '5.7.0'
  sha256 'e0600de5cfcc7350c6d5b28d23cf4016f4ad66993a063eabdd022f295ef278a7'

  url "https://download.katalon.com/#{version}/Katalon_Studio.dmg"
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
