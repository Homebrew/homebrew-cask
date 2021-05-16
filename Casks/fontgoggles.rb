cask "fontgoggles" do
  version "1.1.20"
  sha256 "901e4536b82a4f5da377e13ca2fa91fcc98c81509397457ddb1be383070e9b34"

  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg",
      verified: "github.com/justvanrossum/fontgoggles/"
  name "FontGoggles"
  desc "Font viewer for various font formats"
  homepage "https://fontgoggles.org/"

  app "FontGoggles.app"
end
