cask 'mediathekview' do
  version '13'
  sha256 '96c8ba822f171dab19472ae4d8e2120014540c833ca28c767fc913b49a31144a'

  url "https://downloads.sourceforge.net/zdfmediathk/Mediathek/Mediathek%20#{version}/MediathekView-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/zdfmediathk/rss?path=/Mediathek',
          checkpoint: '74248bb4c74b544fa9cfc53eb13ce709ed7a937dd205691b5a808a459e622b86'
  name 'MediathekView'
  homepage 'https://sourceforge.net/projects/zdfmediathk/'

  app 'MediathekView.app'
end
