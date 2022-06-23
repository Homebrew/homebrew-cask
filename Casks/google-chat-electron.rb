cask "google-chat-electron" do
  arch = Hardware::CPU.intel? ? "darwin-x64" : "darwin-arm64"

  version "2.16.3"

  if Hardware::CPU.intel?
    sha256 "7d7bee2fdad32c6bf9e83e53732e76820757522aa85c685c36205d789e9c5a8a"
  else
    sha256 "3420b0e6fb1f854e34f70514d62c517a5ed5194cbc7ed7be44e134d4d4cfcf8f"
  end

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
