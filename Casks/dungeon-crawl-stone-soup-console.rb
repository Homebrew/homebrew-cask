cask "dungeon-crawl-stone-soup-console" do
  version "0.27.1"
  sha256 "2872cbea354e1017146f7df2777f8fbdf4d59e56eec71b9fa41c933de60eb121"

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
