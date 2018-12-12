cask 'katalon-studio' do
  version '5.9.1'
  sha256 '3523e332981ca6c50bc7a94a749ed99d0decd2f3ec22cca59cb52a9e0b3007eb'

  url "https://download.katalon.com/#{version}/Katalon_Studio.dmg"
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
