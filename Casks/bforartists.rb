cask 'bforartists' do
  version '1.0.0'
  sha256 '7720c815adaef5f947c5f61e62c2bcade98ed7661cd30cee69c648e77e88d543'

  url 'http://www.bforartists.de/data/binaries/BforArtists_100.dmg'
  name 'Blender for Artists'
  name 'BforArtists'
  homepage 'http://www.bforartists.de/'

  app 'bforartists.app'
  app 'blenderplayer.app', target: 'bforartists-player.app' # renamed to avoid conflict with blend
end
