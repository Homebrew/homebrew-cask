cask "fontgoggles" do
  version "1.9.3"
  sha256 "aacc32e9e9dd55fed51cbbdc66d212a39e6df4402c0b8c441b23e7ed7aea7860"

  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg",
      verified: "github.com/justvanrossum/fontgoggles/"
  name "FontGoggles"
  desc "Font viewer for various font formats"
  homepage "https://fontgoggles.org/"

  app "FontGoggles.app"

  zap trash: "~/Library/Preferences/com.github.justvanrossum.FontGoggles.plist"
end
