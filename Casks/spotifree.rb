class Spotifree < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://spotifree.gordinskiy.com/files/Spotifree.dmg'
  appcast 'http://spotifree.gordinskiy.com/appcast.xml'
  homepage 'http://spotifree.gordinskiy.com'

  link 'Spotifree.app'
end
