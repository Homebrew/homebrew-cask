cask 'ghosttile' do
  version :latest
  sha256 :no_check

  # dl.devmate.com/im.kernelpanic.GhostTile was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/im.kernelpanic.GhostTile/GhostTile.zip'
  name 'Kernelpanic GhostTile'
  name 'GhostTile'
  homepage 'https://ghosttile.kernelpanic.im/'

  app 'GhostTile.app'
end
