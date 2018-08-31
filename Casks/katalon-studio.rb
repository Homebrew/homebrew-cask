cask 'katalon-studio' do
  version '5.6.3'
  sha256 '471410c0864b993ac57e96137a2d728bc67dd50f80ca215a0373a7201b8e729c'

  url "https://download.katalon.com/#{version}/Katalon_Studio.dmg"
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
