cask "fontgoggles" do
  version "1.9.4"
  sha256 "4d85f265c164fbcd9c4de948b0d323cd8a2b1a7655749ca8fbf59e8f44e4a8e6"

  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg",
      verified: "github.com/justvanrossum/fontgoggles/"
  name "FontGoggles"
  desc "Font viewer for various font formats"
  homepage "https://fontgoggles.org/"

  depends_on :macos

  app "FontGoggles.app"

  zap trash: "~/Library/Preferences/com.github.justvanrossum.FontGoggles.plist"
end
