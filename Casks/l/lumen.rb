cask "lumen" do
  version "1.3.0"
  sha256 "354cc6f83728a4bb4d2d469195afe7abcc5160ea1ca915ec84aee72c7907cd52"

  url "https://github.com/anishathalye/lumen/releases/download/v#{version}/Lumen.zip"
  name "Lumen"
  desc "Magic auto brightness based on screen contents"
  homepage "https://github.com/anishathalye/lumen"

  app "Lumen.app"

  zap trash: [
    "~/Library/Caches/com.anishathalye.Lumen",
    "~/Library/Preferences/com.anishathalye.Lumen.plist",
  ]
end
