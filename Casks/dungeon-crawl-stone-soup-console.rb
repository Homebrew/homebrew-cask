cask "dungeon-crawl-stone-soup-console" do
  version "0.29.1"
  sha256 "ebf114bb35c223f0483eee0904d2e1c6059d8fa4f6c108a7e05555aa7534a1b6"

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
end
