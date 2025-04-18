cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.21.3"
  sha256 arm:   "bf22e8939616f13a1559e62606f30ebc2195fcbb0129ab802d818cfc54d19654",
         intel: "eff6d9345f0201c78eb799225ad256d06c47e920b75fa9a1ac8a22dc97589908"

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
