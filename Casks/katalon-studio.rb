cask 'katalon-studio' do
  version '7.2.0'
  sha256 '2717dea09bb4b458225b94ea82603c4a8b26151ef31fd10e19d2704de5209e87'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
