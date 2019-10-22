cask 'katalon-studio' do
  version '7.0.1'
  sha256 '1809541574f8747e41fad4f0bd54b17bb25705b3c8babcee765f6528dff2f598'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
