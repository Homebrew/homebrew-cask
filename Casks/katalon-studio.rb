cask 'katalon-studio' do
  version '7.4.0'
  sha256 'b5b5a8be023db821394bfeaeca6b4a109c101486237fcaa959488950a3ece57c'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
