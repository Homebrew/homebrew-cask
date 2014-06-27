class SpiritedAway < Cask
  version 'latest'
  sha256 :no_check
  
  url 'https://dl.dropbox.com/u/1025/spiritedaway/Spirited%20Away.zip'
  appcast 'http://files.getdropbox.com/u/1025/spiritedaway/spiritedaway.xml'
  homepage 'http://drikin.com/2010/11/spirited-away.html'

  link 'Spirited Away.app'
end
