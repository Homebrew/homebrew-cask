cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.14.6"
  sha256 arm:   "e2f0976e64bc18c673b060585629883a9532c9aa66af7c5e80d186581f7abf0c",
         intel: "f8886b151eee13b5b0c8f43e3a2c949a4ec7505e59cccd410dc8fe489e22dc75"

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
