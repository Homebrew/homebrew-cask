cask :v1 => 'mediathekview' do
  version '8'
  sha256 'af2b9cb5202a528bebd832dcb5de5fe9b3937027ff65f5808cc1b08f0f85f195'

  url "https://downloads.sourceforge.net/project/zdfmediathk/Mediathek/Mediathek%20#{version}/MediathekView_#{version}.dmg"
  homepage 'http://sourceforge.net/projects/zdfmediathk/'
  license :gpl

  app 'MediathekView.app'
end
