cask "fontgoggles" do
  version "1.6.0"
  sha256 "2c6513ea4e11e344df7675ecb9dc984fcb841b254ed31d06cc990af1e7c1bbc1"

  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg",
      verified: "github.com/justvanrossum/fontgoggles/"
  name "FontGoggles"
  desc "Font viewer for various font formats"
  homepage "https://fontgoggles.org/"

  app "FontGoggles.app"

  zap trash: "~/Library/Preferences/com.github.justvanrossum.FontGoggles.plist"
end
