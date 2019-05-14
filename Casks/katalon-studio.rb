cask 'katalon-studio' do
  version '6.1.5'
  sha256 '43c98b5a5b1f9408f9c39c33ef2a12c20954836bb1a7ef3a47de7313f3638e00'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
