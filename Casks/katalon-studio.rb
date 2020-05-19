cask 'katalon-studio' do
  version '7.3.5'
  sha256 '34d17687622c9e1ef92bdeb5742d92269d63b1678a8a95e59122993d04956bab'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
