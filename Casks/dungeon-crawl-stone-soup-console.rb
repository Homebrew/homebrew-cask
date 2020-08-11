cask "dungeon-crawl-stone-soup-console" do
  version "0.25.1"
  sha256 "3fb8da37afbb276f86dc46b2b28f010c614133a77576a7349222b491fcd946ea"

  # github.com/crawl/crawl/releases was verified as official when first introduced to the cask
  url "https://github.com/crawl/crawl/releases/download/#{version}/dcss-#{version}-macos-console.zip"
  appcast "https://github.com/crawl/crawl/releases.atom"
  name "Dungeon Crawl Stone Soup"
  desc "Game of dungeon exploration, combat and magic"
  homepage "https://crawl.develz.org/"

  app "Dungeon Crawl Stone Soup - Console.app"
end
