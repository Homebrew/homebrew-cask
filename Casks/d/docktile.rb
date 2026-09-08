cask "docktile" do
  version "2.0.1"
  sha256 "fe36949c7b4336275af5d3a43d6f6115bbfb7a846338f2537dbb4aba2341f0d5"

  url "https://github.com/k97/dock-tile/releases/download/v#{version}/DockTile-#{version}.dmg"
  name "Dock Tile"
  desc "Group apps into iOS-style folders in the macOS Dock"
  homepage "https://github.com/k97/dock-tile"

  app "Dock Tile.app"
end
