cask 'katalon-studio' do
  version '5.6.3'
  sha256 '325f67fc34c1a22a9244f1661351c42cfe7939504f99ecf819d6bccc159594fa'

  url "https://download.katalon.com/#{version}/Katalon_Studio.dmg"
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
