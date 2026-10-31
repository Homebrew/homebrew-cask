cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20261030-1817"
  sha256 arm:   "f79823d589b131eaa5ec0f4a2faea67179b4673e0e12c653d614a53d996415cb",
         intel: "f352161fca43dd8247fd2a238f6b1055b4fb80e9d633619ce5fdae10ee1eeba4"

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
