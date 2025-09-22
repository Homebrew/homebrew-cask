cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.32.1"
  sha256 arm:   "ffaa12b253164934d4d842ee2c394ff12a55c2658a31d695ae075b5fbfcb03df",
         intel: "19ec82fbee6e2d303370bbf5077c3e96a3a073fb33189d967d89cdeb8a617894"

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
