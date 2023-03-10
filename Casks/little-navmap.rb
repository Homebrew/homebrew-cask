cask "little-navmap" do
  version "2.8.9"
  sha256 "b400a468eaf969c3aa78dd87bf69ff0880ddf1bc8b54a4d89ccc07604eaa3c46"

  url "https://github.com/albar965/littlenavmap/releases/download/v#{version}/LittleNavmap-macOS-#{version}.zip",
      verified: "github.com/albar965/littlenavmap/"
  name "Little Navmap"
  desc "Flight planning and navigation and airport search and information system"
  homepage "https://albar965.github.io/littlenavmap.html"

  app "Little Navmap.app"
  app "Little Navconnect.app"

  zap trash: [
    "~/Library/Saved Application State/com.yourcompany.littlenavmap.savedState",
    "~/.config/ABarthel",
  ]

  caveats "The X-Plane plugin will be at #{staged_path} after installation."
end
