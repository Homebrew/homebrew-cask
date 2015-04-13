cask :v1 => 'mediathekview' do
  version '9'
  sha256 '3d10f65527bddeff4e2665234fdf52b79e952b32344e980cff8e54b9045aff7b'

  url "http://downloads.sourceforge.net/project/zdfmediathk/Mediathek/Mediathek%20#{version}/MediathekView_#{version}.dmg"
  name 'MediathekView'
  homepage 'http://sourceforge.net/projects/zdfmediathk/'
  license :gpl

  app 'MediathekView.app'
end
