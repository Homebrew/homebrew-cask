class Spotdox < Cask
  url 'https://spotdox.herokuapp.com/downloads/Spotdox.zip'
  appcast 'https://spotdox.herokuapp.com/downloads/appcast.xml'
  homepage 'http://spotdox.com/get-started/'
  version 'latest'
  sha256 :no_check
  link 'Spotdox.app'
end
