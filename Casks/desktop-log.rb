cask :v1 => 'desktop-log' do
  version :latest
  sha256 :no_check

  url 'http://www.nightproductions.net/downloads/desklog.dmg'
  name 'Desktop Log'
  homepage 'http://www.nightproductions.net/desklog.html'
  license :gratis
  tags :vendor => 'Night Productions'

  app 'Desktop Log.app'
end
