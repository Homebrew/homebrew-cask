cask "dungeon-crawl-stone-soup-console" do
  version "0.34.1"
  sha256 "c8e5c06bad71c45b6c453cc1cc554d733acc73450219732944213d64af138b17"

  url "https://github.com/crawl/crawl/releases/download/#{version}/dcss-#{version}-macos-console-universal.zip",
      verified: "github.com/crawl/crawl/releases/"
  name "Dungeon Crawl Stone Soup"
  desc "Game of dungeon exploration, combat and magic"
  homepage "https://crawl.develz.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Dungeon Crawl Stone Soup - Console.app"

  zap trash: "~/Library/Application Support/Dungeon Crawl Stone Soup"
end
