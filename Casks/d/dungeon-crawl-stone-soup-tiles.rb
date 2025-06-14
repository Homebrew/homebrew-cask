cask "dungeon-crawl-stone-soup-tiles" do
  version "0.33.1"
  sha256 "aa63f58d606afdd158bc6b0139c97b0e36a4062cb73641e637d03e2732c032b5"

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
