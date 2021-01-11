cask "dungeon-crawl-stone-soup-tiles" do
  version "0.26.0"
  sha256 "e51680f31e896413d385b5b57997285212461800f01d0b1edb90cfb52a1d9fe2"

  url "https://github.com/crawl/crawl/releases/download/#{version}/dcss-#{version}-macos-tiles.zip",
      verified: "github.com/crawl/crawl/releases/"
  appcast "https://github.com/crawl/crawl/releases.atom"
  name "Dungeon Crawl Stone Soup"
  desc "Game of dungeon exploration, combat and magic"
  homepage "https://crawl.develz.org/"

  app "Dungeon Crawl Stone Soup - Tiles.app"
end
