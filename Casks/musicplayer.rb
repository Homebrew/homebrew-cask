cask :v1 => 'musicplayer' do
  version :latest
  sha256 :no_check

  url 'http://ufd.dk/res/MusicPlayer.app.zip'
  homepage 'http://ufd.dk/musicplayer'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MusicPlayer.app'
end
