cask 'katalon-studio' do
  version '7.2.6'
  sha256 '1854519c353168360aada6e7cf1f03513e8ad2e6d5f4a7876997d2ef620d6349'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
