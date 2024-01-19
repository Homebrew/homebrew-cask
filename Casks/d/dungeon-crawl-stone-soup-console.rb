cask "dungeon-crawl-stone-soup-console" do
  version "0.31.0"
  sha256 "fc94ad5ad73a0abbf3cb7008ade0fa7d7d39f92cf81d0d01e408718dad873708"

  url "https://github.com/crawl/crawl/releases/download/#{version}/dcss-#{version}-macos-console-universal.zip",
      verified: "github.com/crawl/crawl/releases/"
  name "Dungeon Crawl Stone Soup"
  desc "Game of dungeon exploration, combat and magic"
  homepage "https://crawl.develz.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Dungeon Crawl Stone Soup - Console.app"

  zap trash: "~/Library/Application Support/Dungeon Crawl Stone Soup"
end
