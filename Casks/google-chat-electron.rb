cask "google-chat-electron" do
  arch = Hardware::CPU.intel? ? "darwin-x64" : "darwin-arm64"

  version "2.16.1"

  if Hardware::CPU.intel?
    sha256 "54f1345d817a04554464d75c089c086c7d65f67ef19e1e17f560d07bbf3fddd3"
  else
    sha256 "b1039641b0eb8f92eb01500b918d2868285dc7fea461a0af62ea412b59598a6b"
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
