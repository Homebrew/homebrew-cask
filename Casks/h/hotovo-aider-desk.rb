cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.58.0"
  sha256 arm:   "8c020a610864232c4ebc50b377dd2075357c92a63494975b438ce5578bd13713",
         intel: "8de43f70ade65ec59e2c9e5700c03dc1492695d8cb599cd3b7e6247571dbd94c"

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
