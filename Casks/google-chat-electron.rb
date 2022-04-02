cask "google-chat-electron" do
  version "2.14.4"
  sha256 "4d974ff1fd374ebb8a9befdcb019c073cbc29fef0b76b3d2737d2a68a42a2d15"

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
