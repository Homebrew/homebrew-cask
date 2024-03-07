cask "fiji" do
  version "20240306-1617"
  sha256 "9173b5e5551d1510906893b69bc03af03c3b6d2483e764ad8f7b1ae93b5fc790"

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
end
