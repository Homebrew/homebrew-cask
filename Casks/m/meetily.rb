cask "meetily" do
  version "0.4.0"
  sha256 "a38eab454a8dd3b3e0956f24915564e5bc08222dcf007342446f916f51caa728"

  url "https://github.com/Zackriya-Solutions/meetily/releases/download/v#{version}/meetily_#{version}_aarch64.dmg",
      verified: "github.com/Zackriya-Solutions/meetily/"
  name "Meetily"
  desc "Meeting transcription and analysis application"
  homepage "https://meetily.ai/"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "meetily.app"

  zap trash: [
    "~/Library/Application Support/meetily",
    "~/Library/Logs/meetily",
    "~/Library/Preferences/com.meetily.ai.plist",
    "~/Library/Saved Application State/com.meetily.ai.savedState",
  ]
end
