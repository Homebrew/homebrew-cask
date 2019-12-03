cask 'katalon-studio' do
  version '7.1.1'
  sha256 '908fda3fc412a698a983aca73e842f7ff0eaf69812e36859b6d1a6f5703b6989'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
