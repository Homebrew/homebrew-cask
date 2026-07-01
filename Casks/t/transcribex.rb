cask "transcribex" do
  version "8.5"
  sha256 :no_check

  url "https://www.transcribex.io/download/TranscribeX.dmg"
  name "TranscribeX"
  desc "Local AI transcription app"
  homepage "https://www.transcribex.io/"

  livecheck do
    url "https://www.transcribex.io/upgrade/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "TranscribeX.app"

  zap trash: [
    "~/Library/Caches/com.wlly.janome.AudioTranscribe",
    "~/Library/HTTPStorages/com.wlly.janome.AudioTranscribe",
    "~/Library/Preferences/com.wlly.janome.AudioTranscribe.plist",
  ]
end
