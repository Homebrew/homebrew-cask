cask 'mediathekview' do
  version '11'
  sha256 'f8a40daeefb37bd835c03674561957414d866dea1ba31e8bb81cd633a0c1a38f'

  url "http://downloads.sourceforge.net/project/zdfmediathk/Mediathek/Mediathek%20#{version}/MediathekView_#{version}.dmg"
  name 'MediathekView'
  homepage 'http://sourceforge.net/projects/zdfmediathk/'
  license :gpl

  app 'MediathekView.app'
end
