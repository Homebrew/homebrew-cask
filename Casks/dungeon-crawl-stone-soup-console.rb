cask "dungeon-crawl-stone-soup-console" do
  version "0.28.0"
  sha256 "902cbd333db64ab89f7f33d8c621e6de8330d4b626ba5ecf0cf3c514c52d68ca"

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
