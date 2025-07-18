cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.23.1"
  sha256 arm:   "8655c6bb26bb228d7c1a9709e7d0a1758422b0cbbecde4afde5d017da5aee427",
         intel: "955103feedc4d667893b0a6814c6646b094609eff7840bd772e00177d2550276"

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
