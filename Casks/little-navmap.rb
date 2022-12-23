cask "little-navmap" do
  version "2.8.7"
  sha256 "f484f57ac0325088fd329a81477854676c2182112ee9380d6fdfa1d96a18b346"

  url "https://github.com/albar965/littlenavmap/releases/download/v#{version}/LittleNavmap-macOS-#{version}.zip",
      verified: "github.com/albar965/littlenavmap/"
  name "Little Navmap"
  desc "Flight planning and navigation and airport search and information system"
  homepage "https://albar965.github.io/littlenavmap.html"

  app "Little Navmap.app"
  app "Little Navconnect.app"

  caveats "The X-Plane plugin will be at #{staged_path} after installation."
end
