cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.10.2"
  sha256 arm:   "d693fdbc8100970db667359956f92e1bd03f40855fea80ea88783f04f8336470",
         intel: "e46a65f7d59222dc858fe76d03e972ed382e98ee64dcdc01f83b789d76684cb1"

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
