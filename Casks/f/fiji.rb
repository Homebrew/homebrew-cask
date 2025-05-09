cask "fiji" do
  version "20250508-2217"
  sha256 "85dc91f4be8e9e833131a43fb30a028d59e9a68cd3df8677d5f3858b1da3f5d7"

  url "https://downloads.imagej.net/fiji/archive/#{version}/fiji-macosx.zip",
      verified: "downloads.imagej.net/fiji/archive/"
  name "Fiji"
  desc "Open-source image processing package"
  homepage "https://fiji.sc/"

  livecheck do
    url "https://downloads.imagej.net/fiji/archive/"
    regex(/(\d{8}-\d{4})/i)
  end

  auto_updates true

  app "Fiji.app"

  zap trash: [
    "~/Library/Preferences/sc.fiji.cellcounter.plist",
    "~/Library/Saved Application State/org.fiji.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
