cask "speechify-voice-ai" do
  version "3.23.0,635"
  sha256 "9430d721fadc53ee89353f4196337ff86746b2206039d93874ea2b6663cd7cdd"

  url "https://lfs-cdn.speechify.com/mac/dmgs/#{version.tr(",", "-")}/SpeechifyVoiceAssistant-#{version.tr(",", "-")}.dmg"
  name "Speechify AI Assistant"
  desc "AI-powered reading and voice assistant"
  homepage "https://www.speechify.com/"

  livecheck do
    url "https://lfs-cdn.speechify.com/mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Speechify Voice AI.app"

  zap trash: [
    "~/Library/Application Support/com.cliffweitzman.speechifymacagent",
    "~/Library/Caches/com.cliffweitzman.speechifymacagent",
    "~/Library/Caches/com.crashlytics.data/com.cliffweitzman.speechifymacagent",
    "~/Library/HTTPStorages/com.cliffweitzman.speechifymacagent",
    "~/Library/Preferences/com.cliffweitzman.speechifymacagent.plist",
  ]
end
