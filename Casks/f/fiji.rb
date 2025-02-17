cask "fiji" do
  version "20250217-1317"
  sha256 "b0b0260a106484193c335b4e3d4af2488d0296cb080c154188007174dea31d22"

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
