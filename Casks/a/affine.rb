cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.20.3"
  sha256 arm:   "08dd888c8ff3d23f650bdf6cab26282db943a8515e979defe595a477b5b90237",
         intel: "da22088c7b00702c9464f8f49b65b1592a0dd9c48ca3fa3a9b3592460bda0033"

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
