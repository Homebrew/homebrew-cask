cask 'katalon-studio' do
  version '6.2.0'
  sha256 '3729d704b77f75fd02a7dcde6f7ffd0842491ba6f45ea6a212236fac503214f1'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
