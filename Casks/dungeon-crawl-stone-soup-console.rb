cask "dungeon-crawl-stone-soup-console" do
  version "0.25.1"
  sha256 "3fb8da37afbb276f86dc46b2b28f010c614133a77576a7349222b491fcd946ea"

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
