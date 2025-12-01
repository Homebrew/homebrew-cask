cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.42.1"
  sha256 arm:   "cd838da3c5d1d67123c5d608d4c7abeef59e98fd1e7441f7be412e601dbaab19",
         intel: "3979502b8830d21a9070e37a18db3e0a4bf1e4ed46d043621acc515c3f129f33"

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
