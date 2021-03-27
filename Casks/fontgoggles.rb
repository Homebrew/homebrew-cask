cask "fontgoggles" do
  version "1.1.17"
  sha256 "48c0c3e8d75f7688184e9691dfdb3251eee7a00440431d78ba3170a0332eac3e"

  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg",
      verified: "github.com/justvanrossum/fontgoggles/"
  name "FontGoggles"
  desc "Font viewer for various font formats"
  homepage "https://fontgoggles.org/"

  app "FontGoggles.app"
end
