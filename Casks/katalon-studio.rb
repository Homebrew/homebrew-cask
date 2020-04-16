cask 'katalon-studio' do
  version '7.3.3'
  sha256 '5c4d1e226730447d125048b3f9dc60ee8f92d7b6f4f82785ec80952a5983ca24'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
