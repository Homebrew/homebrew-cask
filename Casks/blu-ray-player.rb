cask :v1 => 'blu-ray-player' do
  version :latest
  sha256 :no_check

  url 'http://www.macblurayplayer.com/user/download/Mac_Bluray_Player.dmg'
  homepage 'http://www.macblurayplayer.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Blu-ray Player.app'
end
