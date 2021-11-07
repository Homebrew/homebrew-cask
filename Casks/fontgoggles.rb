cask "fontgoggles" do
  version "1.4.0"
  sha256 "c2c53a0db36d153ba5c708fba8cf1f9a5d76427d66deeb7f94f7e3cab0ad0a39"

  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg",
      verified: "github.com/justvanrossum/fontgoggles/"
  name "FontGoggles"
  desc "Font viewer for various font formats"
  homepage "https://fontgoggles.org/"

  app "FontGoggles.app"
end
