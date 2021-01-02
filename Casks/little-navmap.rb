cask "little-navmap" do
  version "2.6.6"
  sha256 "6907baae2f42a6b13e788b0ce550d0a5ae4e4125d1473f8a718aa552ed0739c4"

  url "https://github.com/albar965/littlenavmap/releases/download/v#{version}/LittleNavmap-macOS-#{version}.zip", verified: "github.com/albar965/littlenavmap/"
  appcast "https://github.com/albar965/littlenavmap/releases.atom"
  name "Little Navmap"
  desc "Flight planning & navigation and airport search & information system"
  homepage "https://albar965.github.io/littlenavmap.html"

  app "Little Navmap.app"
  app "Little Navconnect.app"

  caveats "You'll be able to find the X-Plane plugin at #{staged_path} after installation."
end
