cask "dungeon-crawl-stone-soup-tiles" do
  version "0.28.0"
  sha256 "51b8f46478920eb5b79d4e95382c6014ca332149571b5b6162f89d3ba272ced0"

  url "https://github.com/crawl/crawl/releases/download/#{version}/dcss-#{version}-macos-tiles.zip",
      verified: "github.com/crawl/crawl/releases/"
  name "Dungeon Crawl Stone Soup"
  desc "Game of dungeon exploration, combat and magic"
  homepage "https://crawl.develz.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Dungeon Crawl Stone Soup - Tiles.app"
end
