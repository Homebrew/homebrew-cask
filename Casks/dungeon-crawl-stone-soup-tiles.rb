cask "dungeon-crawl-stone-soup-tiles" do
  version "0.27.1"
  sha256 "183b84eb2e4576436b0fee5699d42c37be3b6bb94b02615d6823a2ed869bf9e4"

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
