cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.25.5"
  sha256 arm:   "235416dd518f1dcb50768540f3749ce277a66adacfaf85cad8c9bc4a62044a52",
         intel: "55e12107c0ac0cf9e019296284122602ddd81015e498b32b40535e8cab3ff31f"

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
  depends_on macos: ">= :big_sur"

  app "AFFiNE.app"

  zap trash: [
    "~/Library/Application Support/AFFiNE",
    "~/Library/Logs/AFFiNE",
    "~/Library/Preferences/pro.affine.app.plist",
    "~/Library/Saved Application State/pro.affine.app.savedState",
  ]
end
