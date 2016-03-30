cask 'mediathekview' do
  version '10'
  sha256 '6118fb5362f08f8204c56f52864ae030c05e4212de96330e8bcc40c5cea5d319'

  url "http://downloads.sourceforge.net/project/zdfmediathk/Mediathek/Mediathek%20#{version}/MediathekView_#{version}.dmg"
  name 'MediathekView'
  homepage 'http://sourceforge.net/projects/zdfmediathk/'
  license :gpl

  app 'MediathekView.app'
end
