cask "dungeon-crawl-stone-soup-tiles" do
  version "0.26.1"
  sha256 "1f83a6dde964df8ad3cf6dc4b8763f2be47525f590fa2e4106a66a698ce61709"

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
