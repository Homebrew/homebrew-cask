cask "dungeon-crawl-stone-soup-console" do
  version "0.26.0"
  sha256 "669129f8035bcf3777ee3a3d99a8b3a68f74cd1ebc420e6f5c171d5f7addce70"

  url "https://github.com/crawl/crawl/releases/download/#{version}/dcss-#{version}-macos-console.zip",
      verified: "github.com/crawl/crawl/releases/"
  appcast "https://github.com/crawl/crawl/releases.atom"
  name "Dungeon Crawl Stone Soup"
  desc "Game of dungeon exploration, combat and magic"
  homepage "https://crawl.develz.org/"

  app "Dungeon Crawl Stone Soup - Console.app"
end
