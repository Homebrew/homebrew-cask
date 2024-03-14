cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.12.3"
  sha256 arm:   "44b7ae5a80111a3df516602ff52fd882d6a4a3112513a13ce65a612bf16065d2",
         intel: "8e308ea1a493d7cb4cba35393a38c1d327fce78fb4d93f19b5eef3c5c7a390c4"

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
