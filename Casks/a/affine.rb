cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.14.9"
  sha256 arm:   "94da727a1cdfec12d3dbdfe7f07ce5f5fbdbf2c4f9349e57089e6c3e4e216bd7",
         intel: "8db5288416577f79c0c06f9f738f0ee8b6aa5b6c39ee37fd6af3ecf7b2a71515"

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
