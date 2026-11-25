cask "meetily" do
  version "0.5.0"
  sha256 "c7ac63bf80c4085d95388e6c569c95f9a7bcb1b539f3fe964f4522c63eac2ef3"

  url "https://github.com/Zackriya-Solutions/meetily/releases/download/v#{version}/meetily_#{version}_aarch64.dmg"
  name "Meetily"
  desc "Meeting transcription and analysis application"
  homepage "https://meetily.ai/"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "meetily.app"

  zap trash: [
    "~/Library/Application Support/com.meetily.ai",
    "~/Library/Application Support/meetily",
    "~/Library/Caches/com.meetily.ai",
    "~/Library/Logs/meetily",
    "~/Library/Preferences/com.meetily.ai.plist",
    "~/Library/Saved Application State/com.meetily.ai.savedState",
    "~/Library/WebKit/com.meetily.ai",
  ]
end
