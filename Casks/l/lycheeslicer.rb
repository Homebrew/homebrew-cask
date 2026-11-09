cask "lycheeslicer" do
  version "7.6.7"
  sha256 "97c0511826fefd2b2fa455288c72a8f833501b8595fd7a13835bce267767ed9c"

  url "https://mango-lychee.nyc3.cdn.digitaloceanspaces.com/LycheeSlicer-#{version}.dmg"
  name "Lychee Slicer"
  desc "Slicer for Resin 3D printers"
  homepage "https://mango3d.io/"

  livecheck do
    url "https://mango-lychee.nyc3.digitaloceanspaces.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on :macos

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
