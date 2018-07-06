cask 'katalon-studio' do
  version '5.4.2'
  sha256 '2dbe490204c4efa319a5b6b07f3e8bbd53d00ebdec46b73eb93e10ee12f34690'

  url "https://download.katalon.com/#{version}/Katalon_Studio.dmg"
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
