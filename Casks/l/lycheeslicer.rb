cask "lycheeslicer" do
  version "7.6.0"
  sha256 "710fc516b0c461ad2dd339f075b7d9d9ac85ef455c8952dae51acec9ca10dcae"

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
