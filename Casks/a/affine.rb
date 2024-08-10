cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.16.1"
  sha256 arm:   "185b53b53a4db9e87c884c40b79974598d40a24c53e9ed8e6855cf180fd3b2b9",
         intel: "336126040343bb204688b671f30c42186538484585dab05c2a909facb35573fc"

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
