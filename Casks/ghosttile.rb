cask "ghosttile" do
  version "15,1510040474"
  sha256 "6f723c7489a272a82648a3fb2a4ad0f91f6bd3d79eea748ea20a046a3aefe0ab"

  # dl.devmate.com/im.kernelpanic.GhostTile/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/im.kernelpanic.GhostTile/#{version.before_comma}/#{version.after_comma}/GhostTile-#{version.before_comma}.zip"
  appcast "https://updates.devmate.com/im.kernelpanic.GhostTile.xml"
  name "Kernelpanic GhostTile"
  name "GhostTile"
  homepage "https://ghosttile.kernelpanic.im/"

  app "GhostTile.app"
end
