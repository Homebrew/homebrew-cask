cask :v1 => 'blu-ray-player' do
  version :latest
  sha256 :no_check

  url 'http://www.macblurayplayer.com/user/download/Mac_Bluray_Player.dmg'
  homepage 'http://www.macblurayplayer.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Blu-ray Player.app'
end
