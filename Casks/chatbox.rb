cask "chatbox" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.2"
  sha256 arm:   "c446873acf7eb73c387bb255deb7ad63fb23d3d6ba5215bda562cbb609fcc1e7",
         intel: "0bc04cc0f7e4c8ffa3b182e3879b1577d74b2972991cc3d31952309b0630672e"

  url "https://github.com/Bin-Huang/chatbox/releases/download/v#{version}/chatbox_#{version}_#{arch}.dmg",
      verified: "github.com/Bin-Huang/chatbox/"
  name "chatbox"
  desc "Desktop app for GPT-4 / GPT-3.5 (OpenAI API)"
  homepage "https://chatboxapp.xyz/"

  auto_updates true

  app "chatbox.app"

  uninstall quit: "xyz.chatboxapp.app"

  zap trash: [
    "~/Library/Application Support/xyz.chatboxapp.app",
    "~/Library/Caches/xyz.chatboxapp.app",
    "~/Library/Preferences/xyz.chatboxapp.app.plist",
    "~/Library/Saved Application State/xyz.chatboxapp.app.savedState",
    "~/Library/WebKit/xyz.chatboxapp.app",
  ]
end
