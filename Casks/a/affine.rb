cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.18.0"
  sha256 arm:   "0e2c773de5f18136ebc87506fc218c203a9b90b927a3862776b6fb224352c948",
         intel: "e7876ed1f324b7de408fd761b4f09b00082e905f3d15ad416f7e183c74074588"

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
