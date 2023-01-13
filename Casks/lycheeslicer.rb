cask "lycheeslicer" do
  version "5.0.1"
  sha256 "03a7578f7665fd6934ad8de60405c5a49a70f3f2955a8ef47f682bfc563c7e04"

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
