cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.26.0"
  sha256 arm:   "95296416d9bc386afaa6852449a11f59cbba747c9608c29b24cc74298eabcd5c",
         intel: "df0f5f0f20cd1c30ddcc84e180ff5856480c2c20dae6a785c52c0a86fadf95f4"

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
  depends_on macos: ">= :monterey"

  app "AFFiNE.app"

  zap trash: [
    "~/Library/Application Support/AFFiNE",
    "~/Library/Logs/AFFiNE",
    "~/Library/Preferences/pro.affine.app.plist",
    "~/Library/Saved Application State/pro.affine.app.savedState",
  ]
end
