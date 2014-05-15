class Sparrow < Cask
  url 'http://download.sparrowmailapp.com/appcast/Sparrow-latest.dmg'
  appcast 'http://download.sparrowmailapp.com/appcast/appcast.xml'
  homepage 'http://www.sparrowmailapp.com/'
  version 'latest'
  sha256 :no_check
  link 'Sparrow.app'
end
