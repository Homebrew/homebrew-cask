cask "meetily" do
  version "0.3.0"
  sha256 "84f17516418745997125e14e8455a2fdc4d87badd51806b24f3370599323c52f"

  url "https://github.com/Zackriya-Solutions/meetily/releases/download/v#{version}/meetily_#{version}_aarch64.dmg",
      verified: "github.com/Zackriya-Solutions/meetily/"
  name "Meetily"
  desc "Meeting transcription and analysis application"
  homepage "https://meetily.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
