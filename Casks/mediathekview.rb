cask 'mediathekview' do
  version '11'
  sha256 'f8a40daeefb37bd835c03674561957414d866dea1ba31e8bb81cd633a0c1a38f'

  url "https://downloads.sourceforge.net/zdfmediathk/Mediathek/Mediathek%20#{version}/MediathekView_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/zdfmediathk/rss?path=/Mediathek',
          checkpoint: '2ff214f1be47690e0c043b448293a2ac54b335d7783485b2089df7da16640092'
  name 'MediathekView'
  homepage 'https://sourceforge.net/projects/zdfmediathk/'
  license :gpl

  app 'MediathekView.app'
end
