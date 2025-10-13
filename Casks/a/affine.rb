cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.25.0"
  sha256 arm:   "332380ef5ee9fe62be887c38552d03d93664c2581a288882476bc8c5cad43a06",
         intel: "8b926cf43df2a6383c64c7f7996d24ec3827fd29f4be14bebd4903cc8774c96b"

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

  app "AFFiNE.app"

  zap trash: [
    "~/Library/Application Support/AFFiNE",
    "~/Library/Logs/AFFiNE",
    "~/Library/Preferences/pro.affine.app.plist",
    "~/Library/Saved Application State/pro.affine.app.savedState",
  ]
end
