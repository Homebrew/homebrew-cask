cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.11.3"
  sha256 arm:   "3266c6d0d5910e1f66da2f258b82bed3e99afaa6df167017d61a83955271bf91",
         intel: "b1559a5af990940d030afcc1095d32a3ebed380b2e6ec01db94a3bf75dd07b70"

  url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-stable-macos-#{arch}.zip",
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
