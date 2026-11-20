cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20261119-2117"
  sha256 arm:   "1bf0b91510b4b47d61b62b44b51225473b13c58c0edf774f812e695011e0b5b4",
         intel: "68ef9b2315f6f6f28137b0473d67932fc9c0b0ce311c92d34baf525940f549b9"

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
