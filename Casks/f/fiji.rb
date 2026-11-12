cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20261112-1517"
  sha256 arm:   "c1bbb7016f246d66acbdce79f9a3a2bf17790c27d2bd9ef104a5b5333590bc08",
         intel: "13b84f3066ef74f70989dfbda5a07d11c4de441fb0538c36e6a7a7a62479f57d"

  url "https://downloads.imagej.net/fiji/archive/latest/#{version}/fiji-latest-macos#{arch}-jdk.zip"
  name "Fiji"
  desc "Open-source image processing package"
  homepage "https://fiji.sc/"

  livecheck do
    url "https://downloads.imagej.net/fiji/archive/latest/"
    regex(/(\d{8}-\d{4})/i)
  end

  auto_updates true
  depends_on :macos

  suite "Fiji"

  zap trash: [
    "~/Library/Preferences/sc.fiji.cellcounter.plist",
    "~/Library/Saved Application State/org.fiji.savedState",
  ]
end
