cask "chatbox" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.4"
  sha256 arm:   "2c3684fe9e77945d39e108973333ebc5bfbfc6066c992317af55d371f5599f52",
         intel: "861a6c9cee3e0bd867d94bfd2d7a010fe22e5deeedc39e4f2630fc1fc0acdfea"

  url "https://github.com/Bin-Huang/chatbox/releases/download/v#{version}/chatbox_#{version}_#{arch}.dmg",
      verified: "github.com/Bin-Huang/chatbox/"
  name "chatbox"
  desc "Desktop app for GPT-4 / GPT-3.5 (OpenAI API)"
  homepage "https://chatboxapp.xyz/"

  app "chatbox.app"

  uninstall quit: "xyz.chatboxapp.app"

  zap trash: [
    "~/Library/Application Support/xyz.chatboxapp.app",
    "~/Library/Caches/xyz.chatboxapp.app",
    "~/Library/Preferences/xyz.chatboxapp.app.plist",
    "~/Library/Saved Application State/xyz.chatboxapp.app.savedState",
  ]
end
