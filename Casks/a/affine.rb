cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.21.0"
  sha256 arm:   "8607d1cb9d0424c0753c735a0fc55f626c1aaa9cda14e90c35b8001958809f1c",
         intel: "7a0f4191cdb2893cb6aa81c9c7542498171bc19a88289dda3236dc38cf353814"

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
