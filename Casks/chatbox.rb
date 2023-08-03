cask "chatbox" do
  arch arm: "-arm64"

  version "0.6.6"
  sha256 arm:   "ea9f9203c4b4010e9323392d8641a8e0d8b4c1b51d3eeb9ad6334e370e357b3d",
         intel: "8b9abd7c0b4ff34b3262c40b6a22ffcdde9ca14a6bd6229c321f8acacb99dd00"

  url "https://github.com/Bin-Huang/chatbox/releases/download/v#{version}/Chatbox-#{version}#{arch}.dmg",
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
