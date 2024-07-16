cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.15.5"
  sha256 arm:   "db8f6fa8d7f0b500e85c6d7bb382f0d9fe71907d4d4dcbba5832d3ca3a708684",
         intel: "6ec06b7039807226e212a26dfdf3ef3f1c39f8aafcd36b0d94ad089e8e56cc8e"

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
