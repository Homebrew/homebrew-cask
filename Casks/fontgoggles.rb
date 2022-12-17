cask "fontgoggles" do
  version "1.7.3"
  sha256 "b871047cb95d998af1d5bd531160c6828c899a2772c62da8870452a6f0bb37bf"

  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg",
      verified: "github.com/justvanrossum/fontgoggles/"
  name "FontGoggles"
  desc "Font viewer for various font formats"
  homepage "https://fontgoggles.org/"

  app "FontGoggles.app"

  zap trash: "~/Library/Preferences/com.github.justvanrossum.FontGoggles.plist"
end
