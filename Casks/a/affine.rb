cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.13.1"
  sha256 arm:   "c21b1a7a12b61e7112f144dd8f5d943cfbb31cc3a5088f3e7094f0d18b59d7e5",
         intel: "63cb6eaf032e4b352f25ae085571059beac6f6018feaf58b3090e55aea511949"

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
