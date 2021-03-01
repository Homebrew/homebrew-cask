cask "little-navmap" do
  version "2.6.8"
  sha256 "41cd6e3bced0b96acc6b57daa015fbce9fd8450645dfddec45856a0f32eb1f27"

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
