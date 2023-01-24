cask "lycheeslicer" do
  version "5.0.2"
  sha256 "14dd947788d012687eb7b9e0a703821729507e61b37d98e9c0841c48398ffa09"

  url "https://mango-lychee.nyc3.cdn.digitaloceanspaces.com/LycheeSlicer-#{version}.dmg",
      verified: "mango-lychee.nyc3.cdn.digitaloceanspaces.com/"
  name "Lychee Slicer"
  desc "Slicer for Resin 3D printers"
  homepage "https://mango3d.io/lychee-slicer-3-for-sla-3d-printers/"

  livecheck do
    url "https://mango3d.io/downloads/"
    regex(/href=.*?LycheeSlicer[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "LycheeSlicer.app"

  zap trash: [
    "~/Library/Application Support/LycheeSlicer",
    "~/Library/Application Support/LycheeSlicerconfig.json",
    "~/Library/Logs/LycheeSlicer",
    "~/Library/Preferences/com.mango3d.lychee.plist",
    "~/Library/Saved Application State/com.mango3d.lychee.savedState",
  ]
end
