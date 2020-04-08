cask 'katalon-studio' do
  version '7.3.1'
  sha256 '0e7cfe03b1d1dc3ef273a6784aeefc9477c588817ef89689a28485ca164d2292'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
