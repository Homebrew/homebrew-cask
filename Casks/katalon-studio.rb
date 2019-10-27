cask 'katalon-studio' do
  version '7.0.4'
  sha256 '697b890b70698e7222226c2f8235a65261d22c7eff851e27ab6642691764266e'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
