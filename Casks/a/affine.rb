cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.22.4"
  sha256 arm:   "8169060aa90f8e9cd0218d736bc121e7deb60fd523b7b1d26c0865c4a74e8931",
         intel: "c63c27a0f1cd71bba9481b194d52f559922f25b834a32858aa5720d68a887eb4"

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
