cask "dungeon-crawl-stone-soup-console" do
  version "0.30.1"
  sha256 "152678ab3107df15c2fe5ba27fa022387fb8a8120aa9301dde9a9974e811d6fa"

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
