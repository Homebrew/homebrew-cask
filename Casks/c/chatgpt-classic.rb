cask "chatgpt-classic" do
  version "1.2026.184,1784145287"
  sha256 :no_check

  url "https://persistent.oaistatic.com/classic/public/ChatGPT_Classic.dmg",
      verified: "persistent.oaistatic.com/classic/public/"
  name "ChatGPT Classic"
  desc "OpenAI's previous ChatGPT desktop app"
  homepage "https://chatgpt.com/"

  # Some older items in the Sparkle feed have a more recent pubDate, so it's necessary to
  # work with all of the items in the feed (not just the newest one).
  livecheck do
    url "https://persistent.oaistatic.com/sidekick/public/sparkle_public_appcast.xml"
    strategy :sparkle do |items|
      items.map(&:nice_version)
    end
  end

  auto_updates true
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "ChatGPT Classic.app"

  uninstall launchctl: "com.openai.chat-helper",
            quit:      "com.openai.chat"

  zap trash: [
    "~/Library/Application Scripts/com.openai.chat.Widgets",
    "~/Library/Application Scripts/group.com.openai.chat",
    "~/Library/Application Support/ChatGPT",
    "~/Library/Application Support/com.openai.chat",
    "~/Library/Caches/ChatGPTHelper",
    "~/Library/Caches/com.openai.chat",
    "~/Library/Containers/com.openai.chat.Widgets",
    "~/Library/Group Containers/group.com.openai.chat",
    "~/Library/HTTPStorages/ChatGPTHelper.binarycookies",
    "~/Library/HTTPStorages/com.openai.chat",
    "~/Library/HTTPStorages/com.openai.chat.binarycookies",
    "~/Library/Preferences/ChatGPTHelper.plist",
    "~/Library/Preferences/com.openai.chat.*.plist",
    "~/Library/Preferences/com.openai.chat.plist",
    "~/Library/Saved Application State/com.openai.chat.savedState",
    "~/Library/WebKit/com.openai.chat",
  ]
end
