cask 'katalon-studio' do
  version '5.10.0'
  sha256 'a084800b674c6616112d1c8c27c4dc96d2e1af5e06d82fa905dce634fd321cdb'

  url "https://download.katalon.com/#{version}/Katalon_Studio.dmg"
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
