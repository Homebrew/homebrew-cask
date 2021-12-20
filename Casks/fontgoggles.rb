cask "fontgoggles" do
  version "1.4.1"
  sha256 "dd710232d7505413f3bee6d87d9c0cd5c1155143fdd5e93de6a868d5d0423262"

  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg",
      verified: "github.com/justvanrossum/fontgoggles/"
  name "FontGoggles"
  desc "Font viewer for various font formats"
  homepage "https://fontgoggles.org/"

  app "FontGoggles.app"
end
