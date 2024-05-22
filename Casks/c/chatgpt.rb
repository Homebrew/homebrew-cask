cask "chatgpt" do
  version "1.2024.137,1716336334"
  sha256 "a5246bb35bc39f313363f72973c5e712232deeb54cac218fbb3de69444377ab6"

  url "https://persistent.oaistatic.com/sidekick/public/ChatGPT_Desktop_public_#{version.csv.second}.dmg",
      verified: "persistent.oaistatic.com/sidekick/public/"
  name "ChatGPT"
  desc "OpenAI's official ChatGPT desktop app"
  homepage "https://chatgpt.com/"

  livecheck do
    url "https://persistent.oaistatic.com/sidekick/public/sparkle_public_appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "ChatGPT.app"

  uninstall quit: "com.openai.chat"

  zap trash: [
    "~/Library/Application Support/com.openai.chat",
    "~/Library/Caches/com.openai.chat",
    "~/Library/HTTPStorages/com.openai.chat",
    "~/Library/HTTPStorages/com.openai.chat.binarycookies",
    "~/Library/Preferences/com.openai.chat.plist",
    "~/Library/Saved Application State/com.openai.chat.savedState",
  ]
end
