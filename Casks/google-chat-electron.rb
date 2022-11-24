cask "google-chat-electron" do
  arch arm: "darwin-arm64", intel: "darwin-x64"

  version "2.19.0"
  sha256 arm:   "1e5e7e9fc0e0b26dd4639c43ce7fa9de17a547215da1148896a0499b2330247d",
         intel: "b1899a43f4e3016ef94efee9fabd398bc8b5771bcbe5e6c6a77fcfd168a23e8b"

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
