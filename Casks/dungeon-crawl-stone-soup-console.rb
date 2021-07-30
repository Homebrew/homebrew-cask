cask "dungeon-crawl-stone-soup-console" do
  version "0.27.0"
  sha256 "cc221c346587e2195114c13cc53de4f541caf069bc4fd2bb3eeb2040fd22e21e"

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
