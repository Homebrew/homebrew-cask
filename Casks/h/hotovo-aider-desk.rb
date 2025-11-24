cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.41.0"
  sha256 arm:   "3d428162de6117f1566e7e84c92a6fb552020d08e18940ad1266e5aec3d76749",
         intel: "a7e8443897b5b28b1e1d980c2beb8c156146764ecc725c659a859ac37edb19f5"

  url "https://github.com/hotovo/aider-desk/releases/download/v#{version}/aider-desk-#{version}-macos-#{arch}.dmg"
  name "AiderDesk"
  desc "Desktop GUI for Aider AI pair programming"
  homepage "https://github.com/hotovo/aider-desk"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "aider-desk.app"

  zap trash: [
    "~/Library/Application Support/aider-desk",
    "~/Library/Logs/aider-desk",
    "~/Library/Preferences/com.hotovo.aider-desk.plist",
    "~/Library/Saved Application State/com.hotovo.aider-desk.savedState",
  ]
end
