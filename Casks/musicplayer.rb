cask 'musicplayer' do
  version :latest
  sha256 :no_check

  url 'http://ufd.dk/res/MusicPlayer.app.zip'
  name 'Music Player'
  homepage 'http://ufd.dk/musicplayer'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MusicPlayer.app'
end
