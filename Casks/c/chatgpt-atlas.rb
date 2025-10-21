cask "chatgpt-atlas" do
  version "1.0.0"
  sha256 "c01cf975b0664567e420c593ee94dcbc9e2b7ee92ed96473be0c728d4a08c3ee"

  # OpenAI does not provide versioned download URLs for ChatGPT Atlas; this is a rolling release pattern.
  url "https://persistent.oaistatic.com/atlas/public/ChatGPT_Atlas.dmg"
  name "ChatGPT Atlas"
  desc "A browser with ChatGPT built in."
  homepage "https://chatgpt.com/atlas"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "ChatGPT Atlas.app"

  uninstall quit: "com.openai.atlas.web"

  zap trash: [
    "~/Library/Application Support/OpenAI/ChatGPT Atlas",
    "~/Library/Application Support/com.openai.atlas",
    "~/Library/Application Support/com.openai.atlas/io.sentry/SentryCrash/ChatGPT Atlas",
    "~/Library/Preferences/com.openai.atlas.plist",
    "~/Library/Preferences/com.openai.atlas.web.plist",
    "~/Library/HTTPStorages/com.openai.atlas.binarycookies",
    "~/Library/HTTPStorages/com.openai.atlas",
    "~/Library/Caches/com.openai.atlas",
    "~/Library/Logs/DiagnosticReports/ChatGPT Atlas (Service)*.ips",
    "~/Library/Application Support/CrashReporter/ChatGPT Atlas (Service)_*.plist",
  ]
end
