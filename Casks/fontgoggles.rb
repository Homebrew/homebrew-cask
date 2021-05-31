cask "fontgoggles" do
  version "1.3.1"
  sha256 "7728785add360252b28b8bfa8c1e6a246abb54b514ebcaf20628841d91780d38"

  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg",
      verified: "github.com/justvanrossum/fontgoggles/"
  name "FontGoggles"
  desc "Font viewer for various font formats"
  homepage "https://fontgoggles.org/"

  app "FontGoggles.app"
end
