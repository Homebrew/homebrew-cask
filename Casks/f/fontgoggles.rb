cask "fontgoggles" do
  version "1.9.0"
  sha256 "51e1734e23bada541af864387d3a43ef7d4fb514da4668b77596fd9dd6e710db"

  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg",
      verified: "github.com/justvanrossum/fontgoggles/"
  name "FontGoggles"
  desc "Font viewer for various font formats"
  homepage "https://fontgoggles.org/"

  app "FontGoggles.app"

  zap trash: "~/Library/Preferences/com.github.justvanrossum.FontGoggles.plist"
end
