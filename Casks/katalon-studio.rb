cask 'katalon-studio' do
  version '5.4.1'
  sha256 '0b0706915c8db4cabd505a54ab30e0bcf2fda27af1df2d898404029bd21a502e'

  url "https://download.katalon.com/#{version}/Katalon_Studio.dmg"
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
