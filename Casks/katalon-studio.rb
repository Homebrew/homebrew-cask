cask 'katalon-studio' do
  version '5.8.6'
  sha256 '682a7a7de927fe6ce9b9379649fcba6d148241fdf0594875c836a92e3e21df27'

  url "https://download.katalon.com/#{version}/Katalon_Studio.dmg"
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
