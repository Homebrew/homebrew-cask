cask "little-navmap" do
  version "2.8.11"
  sha256 "659cd69588ffe57af0a075970301558e4470fc7995bb33c359d440478504a7af"

  url "https://github.com/albar965/littlenavmap/releases/download/v#{version}/LittleNavmap-macOS-#{version}.zip",
      verified: "github.com/albar965/littlenavmap/"
  name "Little Navmap"
  desc "Flight planning and navigation and airport search and information system"
  homepage "https://albar965.github.io/littlenavmap.html"

  app "Little Navconnect.app"
  app "Little Navmap.app"

  zap trash: [
    "~/.config/ABarthel",
    "~/Library/Saved Application State/com.yourcompany.littlenavmap.savedState",
  ]

  caveats "The X-Plane plugin will be at #{staged_path} after installation."
end
