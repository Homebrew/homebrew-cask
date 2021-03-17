cask "little-navmap" do
  version "2.6.10"
  sha256 "bbcf3bba8824262a0debd3426889ee5891b00d4b81df93cd7bbbe32694ee200a"

  url "https://github.com/albar965/littlenavmap/releases/download/v#{version}/LittleNavmap-macOS-#{version}.zip",
      verified: "github.com/albar965/littlenavmap/"
  appcast "https://github.com/albar965/littlenavmap/releases.atom"
  name "Little Navmap"
  desc "Flight planning and navigation and airport search and information system"
  homepage "https://albar965.github.io/littlenavmap.html"

  app "Little Navmap.app"
  app "Little Navconnect.app"

  caveats "The X-Plane plugin will be at #{staged_path} after installation."
end
