cask 'katalon-studio' do
  version '6.3.3'
  sha256 '41f05ca5350cd6e0a77dafd6a0e8a84cab6d2026827dadcf0f4daf194ba832e6'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
