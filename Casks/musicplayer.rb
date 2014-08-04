class Musicplayer < Cask
  version 'latest'
  sha256 :no_check

  url 'http://ufd.dk/res/MusicPlayer.app.zip'
  homepage 'http://ufd.dk/musicplayer'

  link 'MusicPlayer.app'
end
