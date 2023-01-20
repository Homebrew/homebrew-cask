cask "little-navmap" do
  version "2.8.8"
  sha256 "b5dd27bbac8ee45da8b2d3c12c03f8a5b9db7fedcbbc1544aed7cdd4f389a484"

  url "https://github.com/albar965/littlenavmap/releases/download/v#{version}/LittleNavmap-macOS-#{version}.zip",
      verified: "github.com/albar965/littlenavmap/"
  name "Little Navmap"
  desc "Flight planning and navigation and airport search and information system"
  homepage "https://albar965.github.io/littlenavmap.html"

  app "Little Navmap.app"
  app "Little Navconnect.app"

  caveats "The X-Plane plugin will be at #{staged_path} after installation."
end
