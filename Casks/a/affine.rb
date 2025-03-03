cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.20.4"
  sha256 arm:   "c3a17d398e7b16e4161169feb7176d5dc1387c5e60eaf619e8c0c0071571f4a1",
         intel: "c50b32bcffb0ee36768d9b9acefbabe60ab9d84eec1f73b6935fdeae59749954"

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
