cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.74.0"
  sha256 arm:   "07d0359e73eb79f43dea8601ef404ccf6ee891277b2cbc6d9ff49f0c84720946",
         intel: "1c41054ba16301234740172cbc758d56cff33b8ff38004e2b6ce9baddb8458bc"

  url "https://github.com/hotovo/aider-desk/releases/download/v#{version}/aider-desk-#{version}-macos-#{arch}.dmg"
  name "AiderDesk"
  desc "Desktop GUI for Aider AI pair programming"
  homepage "https://github.com/hotovo/aider-desk"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "aider-desk.app"

  zap trash: [
    "~/Library/Application Support/aider-desk",
    "~/Library/Logs/aider-desk",
    "~/Library/Preferences/com.hotovo.aider-desk.plist",
    "~/Library/Saved Application State/com.hotovo.aider-desk.savedState",
  ]
end
