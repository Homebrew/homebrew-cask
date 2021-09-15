cask "fontgoggles" do
  version "1.3.2"
  sha256 "e58c55ef11b974e66d1b4f0ccf7696eddb33531dd4b594501c2f61b5fae2bad5"

  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg",
      verified: "github.com/justvanrossum/fontgoggles/"
  name "FontGoggles"
  desc "Font viewer for various font formats"
  homepage "https://fontgoggles.org/"

  app "FontGoggles.app"
end
