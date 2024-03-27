cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.13.3"
  sha256 arm:   "c05084b8595bcadd8ae47da844d39d4e93ee4456a617e2ddba81d66f0dff0070",
         intel: "60dabbcf82eef4d6fdf3962fa74956a0a4dca05302539fa6ca4a6d715abbb541"

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
