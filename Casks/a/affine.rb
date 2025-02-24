cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.20.0"
  sha256 arm:   "16e65877396372fb1ba64ab0b69c279745bfa182165446222facec51df810477",
         intel: "9dd1b82f472c48b452244acfa582ed1a739a76eb7890a4302d6c2830f66591b5"

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
