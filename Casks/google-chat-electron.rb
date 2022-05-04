cask "google-chat-electron" do
  version "2.15.1"

  if Hardware::CPU.intel?
    sha256 "671b42125a6100fdf64b07ecde1cd91d8ba1b3caf5530746f96cf4621516eee3"
    arch = "darwin-x64"
  else
    sha256 "cf490d915018e12cfaca061cb0aef0ac013600b8c112b06a6219cf377268e1fb"
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
