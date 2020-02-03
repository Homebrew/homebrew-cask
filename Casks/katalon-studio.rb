cask 'katalon-studio' do
  version '7.2.4'
  sha256 '37a970aff73f06199552bfcbbc2580f44ecf2478c5420600d3ca2988ef75391e'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
