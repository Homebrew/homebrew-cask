cask 'katalon-studio' do
  version '5.6.0'
  sha256 '0f11c82b390fca4a32eb7762bb582fa7c2ee8ac878bba967d0c81611e47853ac'

  url "https://download.katalon.com/#{version}/Katalon_Studio.dmg"
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
