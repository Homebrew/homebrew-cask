cask 'katalon-studio' do
  version '7.4.2'
  sha256 '8d36697a959a7661ff5a0de8bd80917e972e3973765398eb903ef762df663550'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
