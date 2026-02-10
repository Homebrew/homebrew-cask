cask "fontgoggles" do
  version "1.9.2"
  sha256 "b6e8866b9dd8140e5b4a66ef43acc5bce0a4dc16c56b29c67260d5a79666eac2"

  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg",
      verified: "github.com/justvanrossum/fontgoggles/"
  name "FontGoggles"
  desc "Font viewer for various font formats"
  homepage "https://fontgoggles.org/"

  app "FontGoggles.app"

  zap trash: "~/Library/Preferences/com.github.justvanrossum.FontGoggles.plist"
end
