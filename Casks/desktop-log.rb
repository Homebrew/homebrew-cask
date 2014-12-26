cask :v1 => 'desktop-log' do
  version :latest
  sha256 :no_check

  url 'http://www.nightproductions.net/downloads/desklog.dmg'
  homepage 'http://www.nightproductions.net/desklog.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Desktop Log.app'
end
