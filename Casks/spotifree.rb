class Spotifree < Cask
  url 'http://spotifree.gordinskiy.com/files/Spotifree.dmg'
  appcast 'http://spotifree.gordinskiy.com/appcast.xml'
  homepage 'http://spotifree.gordinskiy.com'
  version 'latest'
  sha256 :no_check
  link 'Spotifree.app'
end
