cask "google-chat-electron" do
  arch = Hardware::CPU.intel? ? "darwin-x64" : "darwin-arm64"

  version "2.17.0"

  if Hardware::CPU.intel?
    sha256 "22072ea560d555a198517ed826b5ec055da5fb2237d3e7ef0f7cf27c2eb7aec1"
  else
    sha256 "c0afc381dc583968e193a00e9666606733e062b6b9cda2fff7e3610ac7b59f80"
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
