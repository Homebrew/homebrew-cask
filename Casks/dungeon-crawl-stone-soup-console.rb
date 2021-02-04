cask "dungeon-crawl-stone-soup-console" do
  version "0.26.1"
  sha256 "7f50a50898388a3ee5c509c8e2953f6ea78c9096e92f04b5c98452ca6ca28a89"

  url "https://github.com/crawl/crawl/releases/download/#{version}/dcss-#{version}-macos-console.zip",
      verified: "github.com/crawl/crawl/releases/"
  name "Dungeon Crawl Stone Soup"
  desc "Game of dungeon exploration, combat and magic"
  homepage "https://crawl.develz.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Dungeon Crawl Stone Soup - Console.app"
end
