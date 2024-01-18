cask "dungeon-crawl-stone-soup-tiles" do
  version "0.30.2"
  sha256 "38208a18ff48d6604e3a39899f37c987d861e4bb340ce6b4269a9fda010298cc"

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
