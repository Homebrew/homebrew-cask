cask :v1 => 'google-music-manager' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/androidjumper/mac/current/musicmanager.dmg'
  name 'Google Music Manager'
  homepage 'https://play.google.com/music/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MusicManager.app'
  prefpane 'MusicManager.prefPane'
end
