cask 'katalon-studio' do
  version '7.5.1'
  sha256 'e996947275babc1937e03465c2d26eebd5d03c7f5f3e5212faa86b6f93b3c3c7'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
