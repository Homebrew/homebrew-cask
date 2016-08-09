cask 'mediathekview' do
  version '11'
  sha256 'f8a40daeefb37bd835c03674561957414d866dea1ba31e8bb81cd633a0c1a38f'

  url "https://downloads.sourceforge.net/zdfmediathk/Mediathek/Mediathek%20#{version}/MediathekView_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/zdfmediathk/rss?path=/Mediathek',
          checkpoint: '840b20fd071949773b6e540a9eb5783065efcc676e5084487f178b1a77627d0f'
  name 'MediathekView'
  homepage 'https://sourceforge.net/projects/zdfmediathk/'
  license :gpl

  app 'MediathekView.app'
end
