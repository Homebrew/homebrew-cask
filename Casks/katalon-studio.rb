cask 'katalon-studio' do
  version '5.6.1'
  sha256 'e906c92a5f99316eac35994823a5a525469611a1eb9c2fe68ba3b4fcbfb528d0'

  url "https://download.katalon.com/#{version}/Katalon_Studio.dmg"
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
