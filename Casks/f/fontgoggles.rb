cask "fontgoggles" do
  version "1.9.1"
  sha256 "a934d79b6bf9ae2b684286d3d14529f618c6ce366addc6e705ad69fe6bf6ecdf"

  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg",
      verified: "github.com/justvanrossum/fontgoggles/"
  name "FontGoggles"
  desc "Font viewer for various font formats"
  homepage "https://fontgoggles.org/"

  app "FontGoggles.app"

  zap trash: "~/Library/Preferences/com.github.justvanrossum.FontGoggles.plist"
end
