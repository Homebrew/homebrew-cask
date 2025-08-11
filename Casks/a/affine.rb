cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.24.0"
  sha256 arm:   "49f3905941e85a4c91bccf5deddcb09b44b629c70cf2f48c447ee87d4f45d103",
         intel: "943e38d23b9b738ace3472a201748187e3654992108cda12b37498882448c421"

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
