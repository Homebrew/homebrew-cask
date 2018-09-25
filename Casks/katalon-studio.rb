cask 'katalon-studio' do
  version '5.7.1'
  sha256 '5e432b9e66d5aacec8d5e195a7ae15667ae552055e167eae507de938e60d7d64'

  url "https://download.katalon.com/#{version}/Katalon_Studio.dmg"
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
