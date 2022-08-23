cask "google-chat-electron" do
  arch arm: "darwin-arm64", intel: "darwin-x64"

  version "2.18.0"
  sha256 arm:   "81201263cc7a3a3e07106dce5b23148a8a7c21420d6bd862575a92af58f07cba",
         intel: "1f1182a94d92ce7b5f8aad936bd4497f3b62c588dba8ea67280da27c43797fe3"

  url "https://github.com/ankurk91/google-chat-electron/releases/download/#{version}/google-chat-electron-#{version}-#{arch}.zip"
  name "google-chat-electron"
  desc "Standalone app for Google Chat"
  homepage "https://github.com/ankurk91/google-chat-electron"

  depends_on macos: ">= :catalina"

  app "google-chat-electron.app"

  zap trash: [
    "~/Library/Application Support/google-chat-electron",
    "~/Library/LaunchAgents/google-chat-electron.plist",
    "~/Library/Logs/google-chat-electron",
    "~/Library/Preferences/com.electron.google-chat-electron.plist",
    "~/Library/Saved Application State/com.electron.google-chat-electron.savedState",
  ]
end
