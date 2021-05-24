cask "fontgoggles" do
  version "1.1.21"
  sha256 "4d19603335dd8ae3d8739e38082ec40de6578162b19e6f6819d289f15ad46917"

  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg",
      verified: "github.com/justvanrossum/fontgoggles/"
  name "FontGoggles"
  desc "Font viewer for various font formats"
  homepage "https://fontgoggles.org/"

  app "FontGoggles.app"
end
