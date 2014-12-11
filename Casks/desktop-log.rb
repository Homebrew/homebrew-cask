cask :v1 => 'desktop-log' do
  version :latest
  sha256 :no_check

  url 'http://www.nightproductions.net/downloads/desklog.dmg'
  homepage 'http://www.nightproductions.net/desklog.html'
  license :unknown    # todo: improve this machine-generated value

  app 'Desktop Log.app'
end
