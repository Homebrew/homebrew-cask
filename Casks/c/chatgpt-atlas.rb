cask "chatgpt-atlas" do
  version "1.2026.84.2,20260408151909000"
  sha256 "2a75ebcfe662d792455309d2b1366ff95fb783e86ed3ab667f4a691beb34f1ab"

  url "https://persistent.oaistatic.com/atlas/public/ChatGPT_Atlas_Desktop_public_#{version.csv.first}_#{version.csv.second}.dmg",
      verified: "persistent.oaistatic.com/atlas/public/"
  name "ChatGPT Atlas"
  desc "OpenAI's official browser with ChatGPT built in"
  homepage "https://chatgpt.com/atlas"

  # Some older items in the Sparkle feed have a more recent pubDate, so it's necessary to
  # work with all of the items in the feed (not just the newest one).
  livecheck do
    url "https://persistent.oaistatic.com/atlas/public/sparkle_public_appcast.xml"
    strategy :sparkle do |items|
      items.map(&:nice_version)
    end
  end

  auto_updates true
  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "ChatGPT Atlas.app"

  uninstall quit: "com.openai.atlas"

  zap trash: [
    "~/Library/Application Support/com.openai.atlas",
    "~/Library/Application Support/CrashReporter/ChatGPT Atlas (Service)_*.plist",
    "~/Library/Application Support/OpenAI/ChatGPT Atlas",
    "~/Library/Caches/com.openai.atlas",
    "~/Library/HTTPStorages/com.openai.atlas",
    "~/Library/HTTPStorages/com.openai.atlas.binarycookies",
    "~/Library/Logs/DiagnosticReports/ChatGPT Atlas (Service)*.ips",
    "~/Library/Preferences/com.openai.atlas.plist",
    "~/Library/Preferences/com.openai.atlas.web.plist",
  ]
end
