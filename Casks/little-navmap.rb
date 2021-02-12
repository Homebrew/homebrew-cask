cask "little-navmap" do
  version "2.6.7"
  sha256 "feb7f6f78898735d423a47ddee71f0eedfa33c92856c38eff28ac96c751fe766"

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
