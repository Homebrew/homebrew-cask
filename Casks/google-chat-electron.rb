cask "google-chat-electron" do
  version "2.12.1"
  sha256 "4c3134ef71e26c3d0a1c41dc249473dfa16332d4ad01f63d4c2f4902128fa7eb"

  url "https://github.com/ankurk91/google-chat-electron/releases/download/#{version}/google-chat-electron-#{version}-darwin-x64.zip"
  name "google-chat-electron"
  desc "Standalone app for Google Chat"
  homepage "https://github.com/ankurk91/google-chat-electron"

  app "google-chat-electron.app"

  zap trash: [
    "~/Library/Application Support/google-chat-electron",
    "~/Library/LaunchAgents/google-chat-electron.plist",
    "~/Library/Logs/google-chat-electron",
    "~/Library/Preferences/com.electron.google-chat-electron.plist",
    "~/Library/Saved Application State/com.electron.google-chat-electron.savedState",
  ]
end
