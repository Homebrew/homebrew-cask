cask "little-navmap" do
  version "2.6.18"
  sha256 "fdcd0074b432f2a66740a4b3e812bbcef809d6471532e0511b8be9ccd7cc0cd6"

  url "https://github.com/albar965/littlenavmap/releases/download/v#{version}/LittleNavmap-macOS-#{version}.zip",
      verified: "github.com/albar965/littlenavmap/"
  name "Little Navmap"
  desc "Flight planning and navigation and airport search and information system"
  homepage "https://albar965.github.io/littlenavmap.html"

  app "Little Navmap.app"
  app "Little Navconnect.app"

  caveats "The X-Plane plugin will be at #{staged_path} after installation."
end
