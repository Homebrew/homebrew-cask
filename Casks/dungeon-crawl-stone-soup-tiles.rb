cask "dungeon-crawl-stone-soup-tiles" do
  version "0.27.0"
  sha256 "c13bc51f4f2dd1f8a1da7dc28cb150a098432628cc80ea9640c62dd22be1b453"

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
