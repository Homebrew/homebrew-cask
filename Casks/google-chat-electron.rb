cask "google-chat-electron" do
  version "2.15.0"

  if Hardware::CPU.intel?
    sha256 "a757dc557990f32a9be8b21fd81995748e8a2ecc56c772681a3cb427000986fb"
    arch = "darwin-x64"
  else
    sha256 "aadb3e0db0053330fa0543556781d28dc6ca4e32e0a5060b18778e6d5c346cbd"
    arch = "darwin-arm64"
  end

  url "https://github.com/ankurk91/google-chat-electron/releases/download/#{version}/google-chat-electron-#{version}-#{arch}.zip"
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
