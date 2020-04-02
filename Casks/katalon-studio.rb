cask 'katalon-studio' do
  version '7.3.0'
  sha256 'af9a1480d080209958c54579e717f8c79a8d618cd698592dbe8eb6dd24be1459'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
