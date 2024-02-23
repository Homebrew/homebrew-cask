cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.12.0"
  sha256 arm:   "dea8f3909babe1cc39998fd9524fd7b2dfe2e2f6fdc81ac3c6687806490bcfed",
         intel: "f8cb8a2c2b6ca705787b6caa6e92f50c95ac5a47be7a2138a8cff4394742946b"

  url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-stable-macos-#{arch}.zip",
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
