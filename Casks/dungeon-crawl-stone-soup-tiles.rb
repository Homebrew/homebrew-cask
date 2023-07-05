cask "dungeon-crawl-stone-soup-tiles" do
  version "0.30.1"
  sha256 "283284feae15da85fec53908873892b47f4b26671a67b3476ccc7e427d565905"

  url "https://github.com/crawl/crawl/releases/download/#{version}/dcss-#{version}-macos-tiles-universal.zip",
      verified: "github.com/crawl/crawl/releases/"
  name "Dungeon Crawl Stone Soup"
  desc "Game of dungeon exploration, combat and magic"
  homepage "https://crawl.develz.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Dungeon Crawl Stone Soup - Tiles.app"

  zap trash: [
    "~/Library/Application Support/Dungeon Crawl Stone Soup",
    "~/Library/Saved Application State/net.sourceforge.crawl-ref.savedState",
  ]
end
