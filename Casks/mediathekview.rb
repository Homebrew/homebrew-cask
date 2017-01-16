cask 'mediathekview' do
  version '13.0.1'
  sha256 '96c8ba822f171dab19472ae4d8e2120014540c833ca28c767fc913b49a31144a'

  url "https://downloads.sourceforge.net/zdfmediathk/Mediathek/Mediathek%20#{version.major}/MediathekView-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/zdfmediathk/rss?path=/Mediathek',
          checkpoint: 'bec541062bdddfcea5b0ecd4f3e678f9fb0ecd0a00fb1c9b6ec6175b95b86f47'
  name 'MediathekView'
  homepage 'https://sourceforge.net/projects/zdfmediathk/'

  app 'MediathekView.app'
end
