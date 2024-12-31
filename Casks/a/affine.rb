cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.19.3"
  sha256 arm:   "648783cdcb9d73aa168c6236b96e94b87d3daba60fb6af2953a69c3c78cda4c3",
         intel: "2f21c4f3d9a40364954ae6dd1961a8234602d386928ed4d004b131f051b4c504"

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
