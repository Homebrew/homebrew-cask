cask :v1 => 'mediathekview' do
  version '4'
  sha256 '41f53b86b6475fa0d8e347e9430597a975fb4f7c13eae70e82b723dace5b7c8a'

  url "https://downloads.sourceforge.net/project/zdfmediathk/Mediathek/Mediathek%20#{version}/MediathekView_#{version}_OSX.dmg"
  homepage 'http://sourceforge.net/projects/zdfmediathk/'
  license :oss

  app 'MediathekView.app'
end
