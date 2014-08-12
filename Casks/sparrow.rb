class Sparrow < Cask
  version 'latest'
  sha256 :no_check

  url 'http://download.sparrowmailapp.com/appcast/Sparrow-latest.dmg'
  appcast 'http://download.sparrowmailapp.com/appcast/appcast.xml'
  homepage 'http://www.sparrowmailapp.com/'

  link 'Sparrow.app'
end
