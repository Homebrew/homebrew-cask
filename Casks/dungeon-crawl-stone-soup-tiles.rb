cask "dungeon-crawl-stone-soup-tiles" do
  version "0.29.1"
  sha256 "c5d80fc56100cfdfae0ce04f32cca7f32fc1ca2cfe6ddbab19cd969a3ad8f7d3"

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
