cask 'katalon-studio' do
  version '5.10.1'
  sha256 '6f38ca68bedcef336c935822df471368bb273ed9e3bb040cb33580a0465999f4'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
