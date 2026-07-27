cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.76.0"
  sha256 arm:   "524b7bcc581138cba3dcc786a63d60a8d8b04dabae1b26601393fcb25e4291d5",
         intel: "28964f372f6b536fcbec35b167507a79a1e1d9056cebeeed8ec9b4d9d56ede29"

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
