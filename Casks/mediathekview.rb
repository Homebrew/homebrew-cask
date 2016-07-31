cask 'mediathekview' do
  version '11'
  sha256 'f8a40daeefb37bd835c03674561957414d866dea1ba31e8bb81cd633a0c1a38f'

  url "https://downloads.sourceforge.net/zdfmediathk/Mediathek/Mediathek%20#{version}/MediathekView_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/zdfmediathk/rss',
          checkpoint: '16a67687567b7378420e8be654010043043628517013a7bdf5f4da71ae06438d'
  name 'MediathekView'
  homepage 'https://sourceforge.net/projects/zdfmediathk/'
  license :gpl

  app 'MediathekView.app'
end
