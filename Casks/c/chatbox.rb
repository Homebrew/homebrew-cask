cask "chatbox" do
  arch arm: "-arm64"

  version "1.10.5"
  sha256 arm:   "23315272f807be25bfc0aba77b47cf64ea9212d24a76a9e5b5c2c389f0f22997",
         intel: "a6fadbc755b288b838be7fc97e31657c0aed6cacd095344df5aec434c780e3ef"

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
