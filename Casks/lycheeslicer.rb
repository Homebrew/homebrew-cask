cask "lycheeslicer" do
  version "5.2.2"
  sha256 "ca8455117af904da61afc9c0e663ec8706f48dea7cd18285d3213c9b305f27b7"

  url "https://mango-lychee.nyc3.cdn.digitaloceanspaces.com/LycheeSlicer-#{version}.dmg",
      verified: "mango-lychee.nyc3.cdn.digitaloceanspaces.com/"
  name "Lychee Slicer"
  desc "Slicer for Resin 3D printers"
  homepage "https://mango3d.io/"

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
