cask "chatbox" do
  arch arm: "-arm64"

  version "1.9.1"
  sha256 arm:   "6ff52238cfb70d2cf0651551faf5ba455ac3af0d02db02c770815e39a3961ed3",
         intel: "c370b75452fe2ec23e3f0b3014c915ab1146a45e299df44a9f10262a65b2263c"

  url "https://download.chatboxai.app/releases/Chatbox-#{version}#{arch}.dmg"
  name "Chatbox"
  desc "Desktop app for GPT-4 / GPT-3.5 (OpenAI API)"
  homepage "https://chatboxai.app/en"

  livecheck do
    url "https://download.chatboxai.app/releases/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
