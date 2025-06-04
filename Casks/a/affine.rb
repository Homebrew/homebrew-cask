cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.22.0"
  sha256 arm:   "e3a6cf2c7eca004069f5d83545a4cd0a17eb5611ce92ccfce58524a0e37d0689",
         intel: "7e2edce2d881b16b10dfd92c853d9270d1f6d6fe5e67c9386684003cf686b5e9"

  url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-#{version}-stable-macos-#{arch}.zip",
      verified: "github.com/toeverything/AFFiNE/"
  name "AFFiNE"
  desc "Note editor and whiteboard"
  homepage "https://affine.pro/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "AFFiNE.app"

  zap trash: [
    "~/Library/Application Support/AFFiNE",
    "~/Library/Logs/AFFiNE",
    "~/Library/Preferences/pro.affine.app.plist",
    "~/Library/Saved Application State/pro.affine.app.savedState",
  ]
end
