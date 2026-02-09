cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.26.2"
  sha256 arm:   "44e6fde3a72a1b0485564c5316bb00ed1cf3542615a8aa0f1d9f24a6cd2cd0a3",
         intel: "3e9caf4d03ab55ccc8a247ecaa80e0c9d2c2bd309deb43fc7be240f3e39292d3"

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
  depends_on macos: ">= :monterey"

  app "AFFiNE.app"

  zap trash: [
    "~/Library/Application Support/AFFiNE",
    "~/Library/Logs/AFFiNE",
    "~/Library/Preferences/pro.affine.app.plist",
    "~/Library/Saved Application State/pro.affine.app.savedState",
  ]
end
