cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.26.3"
  sha256 arm:   "d6516fe18577c44ce565a5be758cd8f47625f49cfd8701786cb55647b006b864",
         intel: "19f0a33a72fbbcf1d06ed9c320e0570a0e097be9c7318f851e70232e68685a34"

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
