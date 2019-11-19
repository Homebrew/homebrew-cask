cask 'katalon-studio' do
  version '7.0.10'
  sha256 '47c38bd450c29f4afe80ad67dfa418af77fc5d0541a365f90fd7d55b77671641'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
