cask 'katalon-studio' do
  version '7.5.5'
  sha256 '76adad323da657bfed0348161a2e4f564300eaf088a5c707dbdec5b2470b1b01'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
