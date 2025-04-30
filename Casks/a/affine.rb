cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.21.6"
  sha256 arm:   "18e3a5db8fc2608d71cfb8b7a14ec3a989e471967dae982d1b0dc981caf36142",
         intel: "2e826c480b29a8a996b8269cc572b9fdbdd0d13b4baccd61de3ccaa1188e9289"

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
