cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.23.2"
  sha256 arm:   "6b2324b0fa474c02a4f54b71353f0ce774e9a98c925d16fd742ea60f1d1c3d17",
         intel: "611ef960195f7edc7609d7509d8e5ec58934049344c58e6ca023c25c13723b3b"

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
