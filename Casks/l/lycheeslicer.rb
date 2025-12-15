cask "lycheeslicer" do
  version "7.5.4"
  sha256 "81e1eb96915240953c1d67649866a5c1e43dde5fbc976f095ebf5d50aac68831"

  url "https://mango-lychee.nyc3.cdn.digitaloceanspaces.com/LycheeSlicer-#{version}.dmg",
      verified: "mango-lychee.nyc3.cdn.digitaloceanspaces.com/"
  name "Lychee Slicer"
  desc "Slicer for Resin 3D printers"
  homepage "https://mango3d.io/"

  livecheck do
    url "https://mango-lychee.nyc3.digitaloceanspaces.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "LycheeSlicer.app"

  zap trash: [
    "~/Library/Application Support/LycheeSlicer",
    "~/Library/Application Support/LycheeSlicerconfig.json",
    "~/Library/Logs/LycheeSlicer",
    "~/Library/Preferences/com.mango3d.lychee.plist",
    "~/Library/Saved Application State/com.mango3d.lychee.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
