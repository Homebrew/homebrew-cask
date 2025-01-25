cask "chatbox" do
  arch arm: "-arm64"

  version "1.9.2"
  sha256 arm:   "3e1290db460a3546fc44aa438fe982fd7646ba9dfd38796c5cf2ab0448e751b5",
         intel: "21653ab85576c6d7bf87e79c3fff9520187ba8f9f1bedf5b0cff7ddcb19cc5b5"

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
