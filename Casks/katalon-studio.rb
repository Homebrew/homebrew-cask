cask 'katalon-studio' do
  version '7.2.3'
  sha256 '17a948302f6f0a3334d31f242596f8e9d4e5100f784e46270daf932518f6208f'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
