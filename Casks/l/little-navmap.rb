cask "little-navmap" do
  version "3.0.11"
  sha256 "00c7c11a4ba2e065f01ac88ea89ff9749ca9980d913e1a27991312ba3bb09908"

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

  caveats do
    requires_rosetta
    <<~EOS
      "The X-Plane plugin will be at #{staged_path} after installation."
    EOS
  end
end
