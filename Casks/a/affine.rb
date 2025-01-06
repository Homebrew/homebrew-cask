cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.19.5"
  sha256 arm:   "06c631f5dc50a97dc131947fab44a9fb7a285b094a80e007dad24f1368bba248",
         intel: "7cb29de6137e3ee66b3e1aa30bb98b83ad66f90df8f2821550fdeb59ab5d7772"

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
