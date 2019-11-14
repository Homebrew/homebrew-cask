cask 'katalon-studio' do
  version '7.0.9'
  sha256 '8ef5391176db6f291af1881dba0be8fb7da09fc0e8c0df29afa0a61abda609f3'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
