cask "google-chat-electron" do
  arch = Hardware::CPU.intel? ? "darwin-x64" : "darwin-arm64"

  version "2.16.2"

  if Hardware::CPU.intel?
    sha256 "bf0579592e7474935ed45da4ad9bd4f88debe82c6d4867669cbd6703bcf9acad"
  else
    sha256 "656f452b65c673b4a127f2230382b0dee78e5c5a73d3995ff7f0e3802ec2f74d"
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
