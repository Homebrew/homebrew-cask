cask "creality-slicer" do
  version "4.8.2"
  sha256 "7c9588826a8358c6e9cfecc33d3e325b4ad0826729e0d07144037c15628a10dd"

  url "https://file-cdn.creality.com/CrealitySlicer/darwin/Creality_Slicer-#{version}-Darwin.dmg"
  name "Creality Slicer"
  desc "Slicer for all Creality FDM 3D printers"
  homepage "https://www.creality.com/download/"

  livecheck do
    url "https://file-cdn.creality.com/ota-sz/crealityslicer/last.json"
    strategy :json do |json|
      v = json.dig("cura", "Darwin")
      "#{v["major"]}.#{v["minor"]}.#{v["revision"]}"
    end
  end

  app "Creality Slicer.app"

  zap trash: [
    "~/Library/Application Support/Creality Slicer",
    "~/Library/Logs/Creality Slicer",
    "~/Library/Preferences/com.creality.crealityslicer.plist",
    "~/Library/Saved Application State/com.creality.crealityslicer.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
