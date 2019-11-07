cask 'katalon-studio' do
  version '7.0.7'
  sha256 '2a18541e351d244bb1081174ef61715c4ffa269ca0287342557498681c000707'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
