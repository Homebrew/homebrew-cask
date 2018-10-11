cask 'katalon-studio' do
  version '5.8.0'
  sha256 '730d883fe411510a05fc5c9bbaa1ffb2756393f7f5160d2e69f4fb281f2cb1a4'

  url "https://download.katalon.com/#{version}/Katalon_Studio.dmg"
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
