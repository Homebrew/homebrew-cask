cask 'katalon-studio' do
  version '6.3.2'
  sha256 '4ea106b4f3bfa20a0bc8bca1944f50df5da543af3ea8f39fb41dd2fc8ce9c32f'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
