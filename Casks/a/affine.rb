cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.24.1"
  sha256 arm:   "e72cd3d7556fdc7c93570da7a82c39c1c69f4b96bc34a214c7009019656c7bf2",
         intel: "945eab619fab585a849e052b113bc7d78658cc32e3b61acb4fd02e94437a382b"

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
