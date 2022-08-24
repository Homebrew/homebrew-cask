cask "dungeon-crawl-stone-soup-tiles" do
  version "0.29.0"
  sha256 "da86aff3653cec10b419c8741479e792217937817649ff0aee83feaf631d5280"

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
end
