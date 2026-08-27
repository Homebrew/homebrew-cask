cask "chatgpt-atlas" do
  version "1.2026.189.1,20260724200710000"
  sha256 "894b60a1276c65dd220984db647963e6245e06e2211fb3c61b944f6e1a013435"

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

  disable! date: "2026-08-26", because: :discontinued

  auto_updates true
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "ChatGPT Atlas.app"

  uninstall launchctl: "com.openai.atlas.update-helper",
            quit:      "com.openai.atlas"

  zap trash: [
    "~/Library/Application Support/com.openai.atlas",
    "~/Library/Application Support/CrashReporter/ChatGPT Atlas (Service)_*.plist",
    "~/Library/Application Support/OpenAI/ChatGPT Atlas",
    "~/Library/Caches/com.openai.atlas",
    "~/Library/HTTPStorages/com.openai.atlas",
    "~/Library/HTTPStorages/com.openai.atlas.binarycookies",
    "~/Library/LaunchAgents/com.openai.atlas.update-helper.plist",
    "~/Library/Logs/DiagnosticReports/ChatGPT Atlas (Service)*.ips",
    "~/Library/Preferences/com.openai.atlas.plist",
    "~/Library/Preferences/com.openai.atlas.web.plist",
  ]
end
