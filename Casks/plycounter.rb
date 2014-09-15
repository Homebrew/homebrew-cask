class Plycounter < Cask
  version 'latest'
  sha256 :no_check

  url 'https://www.plycount.com/plycounter/downloads/PlyCounter.dmg'
  homepage 'http://www.plycount.com'

  app 'PlyCounter.app'
end
