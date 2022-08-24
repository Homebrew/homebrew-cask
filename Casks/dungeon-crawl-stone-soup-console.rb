cask "dungeon-crawl-stone-soup-console" do
  version "0.29.0"
  sha256 "397dab2cb5917a133a64157b97ba5f82753b794029013e7eb8dc22aac8f0de38"

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
