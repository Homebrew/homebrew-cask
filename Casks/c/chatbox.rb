cask "chatbox" do
  arch arm: "-arm64"

  version "1.18.1"
  sha256 arm:   "f840ea3554fc9c5dd2974fb10ba850b79d3a1a514c993aa127c0f2bb2e315356",
         intel: "b6bce00b90c4e5cd662da095187d91efc51ff076e35c5ddef8ecb6dd264f82df"

  url "https://download.chatboxai.app/releases/Chatbox-#{version}#{arch}.dmg"
  name "Chatbox"
  desc "Desktop app for GPT-4 / GPT-3.5 (OpenAI API)"
  homepage "https://chatboxai.app/en"

  livecheck do
    url "https://download.chatboxai.app/releases/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
