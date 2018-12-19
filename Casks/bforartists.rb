cask 'bforartists' do
  version '1.0.0'
  sha256 '7720c815adaef5f947c5f61e62c2bcade98ed7661cd30cee69c648e77e88d543'

  url "https://www.bforartists.de/data/binaries/BforArtists_#{version.no_dots}.dmg"
  name 'Blender for Artists'
  name 'BforArtists'
  homepage 'https://www.bforartists.de/'

  app 'bforartists.app'
  # Renamed to avoid conflict with blender
  app 'blenderplayer.app', target: 'bforartists-player.app'
end
