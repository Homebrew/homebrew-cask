class Adventure < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.lobotomo.com/products/downloads/Adventure.dmg'
  appcast 'http://www.lobotomo.com/products/Adventure/profileInfo.php'
  homepage 'http://www.lobotomo.com/products/Adventure/index.html'

  link 'Adventure.app'
end
