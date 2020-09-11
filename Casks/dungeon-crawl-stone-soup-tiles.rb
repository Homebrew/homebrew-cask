cask "dungeon-crawl-stone-soup-tiles" do
  version "0.25.1"
  sha256 "c24f556de6ad767c8fbfc545dda62e57a0f965d8748f427f72e9dd5c0d4d0f3d"

  # github.com/crawl/crawl/releases was verified as official when first introduced to the cask
  url "https://github.com/crawl/crawl/releases/download/#{version}/dcss-#{version}-macos-tiles.zip"
  appcast "https://github.com/crawl/crawl/releases.atom"
  name "Dungeon Crawl Stone Soup"
  desc "Game of dungeon exploration, combat and magic"
  homepage "https://crawl.develz.org/"

  app "Dungeon Crawl Stone Soup - Tiles.app"
end
