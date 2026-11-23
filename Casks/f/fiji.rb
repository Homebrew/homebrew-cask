cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20261123-0817"
  sha256 arm:   "c26c755357ea7098bf628dc76b53f495e9d2cf4bdead069ea6e6989d04a9ae09",
         intel: "6d314bced89bbed5822e1726d17dc2bf050f747453aed326f084b87759da3208"

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
