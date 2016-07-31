cask 'mediathekview' do
  version '11'
  sha256 'f8a40daeefb37bd835c03674561957414d866dea1ba31e8bb81cd633a0c1a38f'

  url "https://downloads.sourceforge.net/project/zdfmediathk/Mediathek/Mediathek%20#{version}/MediathekView_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/zdfmediathk/rss',
          checkpoint: '5ef5172d9b1a257fa6b6f3f58bf51a395b58335292977e29832655bed29756b1'
  name 'MediathekView'
  homepage 'http://sourceforge.net/projects/zdfmediathk/'
  license :gpl

  app 'MediathekView.app'
end
