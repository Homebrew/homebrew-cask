cask 'katalon-studio' do
  version '7.0.8'
  sha256 'a824b969dd326188528372039406ca3d9bd3728414bbc08fca5b4b9468082d8e'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
