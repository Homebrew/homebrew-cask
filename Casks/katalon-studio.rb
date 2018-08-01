cask 'katalon-studio' do
  version '5.5.0'
  sha256 'e999ecb317d3bfe086073ba81e657dc13eaab1d9c04f0a81de94f3e5b6fda00e'

  url "https://download.katalon.com/#{version}/Katalon_Studio.dmg"
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
