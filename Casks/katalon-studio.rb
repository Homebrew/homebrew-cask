cask 'katalon-studio' do
  version '6.0.5'
  sha256 'ab31ef0777a590a78ffbecd59b8a915af836098d2bc77b742d69614ce0ecc17a'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
