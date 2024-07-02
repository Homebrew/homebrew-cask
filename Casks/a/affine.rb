cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.15.2"
  sha256 arm:   "22979bcaf67638f62a597b58c9846faa47c269909b6bb4526e4cf6ad6f82fc37",
         intel: "4879dc9fd73bbf8d5b156a34aeb0d0ae2dece4c0a2e7515164d7f457b25929df"

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
