cask 'desktop-log' do
  version :latest
  sha256 :no_check

  url 'http://www.nightproductions.net/downloads/desklog.dmg'
  name 'Night Productions Desktop Log'
  homepage 'http://www.nightproductions.net/desklog.html'
  license :gratis

  app 'Desktop Log.app'
end
