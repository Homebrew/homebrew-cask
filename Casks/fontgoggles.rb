cask "fontgoggles" do
  version "1.2.0"
  sha256 "076df6d16cfb25fd5b1481fb51359facf3d88b3e73578b18a7d5bdfd930ea3ee"

  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg",
      verified: "github.com/justvanrossum/fontgoggles/"
  name "FontGoggles"
  desc "Font viewer for various font formats"
  homepage "https://fontgoggles.org/"

  app "FontGoggles.app"
end
