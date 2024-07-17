cask "nightingale" do
  version "1.12.1,2454"
  sha256 "f1a07e5bb6e069ac2f9fdc89c7708d3badb3b41e27199920a6d55b462764c454"

  url "https://github.com/nightingale-media-player/nightingale-hacking/releases/download/nightingale-#{version.csv.first}/Nightingale_#{version.csv.first}-#{version.csv.second}_macosx-i686.dmg",
      verified: "github.com/nightingale-media-player/nightingale-hacking/"
  name "Nightingale"
  desc "Working tree for the community fork of Songbird"
  homepage "https://getnightingale.com/"

  disable! date: "2024-07-16", because: "is 32-bit only"

  app "Nightingale.app"
end
