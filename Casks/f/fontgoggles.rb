cask "fontgoggles" do
  version "1.8.4"
  sha256 "6764852f6b18eaceb5e0e1edfbee4c8cdd0dd4b50302daeec4195c98aac75ac2"

  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg",
      verified: "github.com/justvanrossum/fontgoggles/"
  name "FontGoggles"
  desc "Font viewer for various font formats"
  homepage "https://fontgoggles.org/"

  app "FontGoggles.app"

  zap trash: "~/Library/Preferences/com.github.justvanrossum.FontGoggles.plist"
end
