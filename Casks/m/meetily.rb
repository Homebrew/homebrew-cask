cask "meetily" do
  version "0.4.1"
  sha256 "16f84b1769619ba3da93bc43e9c1fa3320ce2b00cc9e99225a3d21302770eaf5"

  url "https://github.com/Zackriya-Solutions/meetily/releases/download/v#{version}/meetily_#{version}_aarch64.dmg"
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
