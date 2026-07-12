cask "chatgpt-classic" do
  version "1.2026.183,1783607847"
  sha256 "49b33cadd2ec659b76352384f7ebd332a7ec7029663365a9f720f4a251d3b8d1"

  url "https://persistent.oaistatic.com/sidekick/public/ChatGPT_Desktop_public_#{version.csv.first}_#{version.csv.second}.dmg",
      verified: "persistent.oaistatic.com/sidekick/public/"
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
  conflicts_with cask: "chatgpt"
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "ChatGPT.app"

  uninstall quit: "com.openai.chat"

  zap trash: [
    "~/Library/Application Scripts/com.openai.chat.Widgets",
    "~/Library/Application Scripts/group.com.openai.chat",
    "~/Library/Application Support/ChatGPT",
    "~/Library/Application Support/com.openai.chat",
    "~/Library/Caches/com.openai.chat",
    "~/Library/Containers/com.openai.chat.Widgets",
    "~/Library/Group Containers/group.com.openai.chat",
    "~/Library/HTTPStorages/ChatGPTHelper.binarycookies",
    "~/Library/HTTPStorages/com.openai.chat",
    "~/Library/HTTPStorages/com.openai.chat.binarycookies",
    "~/Library/Preferences/com.openai.chat.*.plist",
    "~/Library/Preferences/com.openai.chat.plist",
    "~/Library/Saved Application State/com.openai.chat.savedState",
    "~/Library/WebKit/com.openai.chat",
  ]
end
