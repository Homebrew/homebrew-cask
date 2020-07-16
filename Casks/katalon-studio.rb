cask 'katalon-studio' do
  version '7.6.0'
  sha256 '02e6fb48bfd9bf7e933768e37a6cbf517e50c09a729a2043331e3bdde7c02a66'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
