cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.14.0"
  sha256 arm:   "63726bcf7a0fd4bd7980476dd7c9d3dcf6d877aec7b0ff75e100d5d0ccb5d0bf",
         intel: "2aae91b4e5fc7a2760cf98fb8378df02955506d40f8a27e1d17a7fd509d75c90"

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
