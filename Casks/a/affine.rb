cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.22.2"
  sha256 arm:   "c66311c4f1f44c7563c561766c4a75a598d2600fa9a53b0ba9e0870a6d5b89f0",
         intel: "05804ca607f9e8fe75784e86562575c7420e55f4d48f94dd10f63f108eab20a3"

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
