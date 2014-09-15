class BluRayPlayer < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.macblurayplayer.com/user/download/Mac_Bluray_Player.dmg'
  homepage 'http://www.macblurayplayer.com/'

  app 'Blu-ray Player.app'
end
