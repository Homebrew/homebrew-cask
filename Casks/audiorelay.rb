cask "audiorelay" do
  version "0.24.2"
  sha256 "17b7c1e62e47eba67523bc51a1aa7c9b7caacd8422525f9e330ed41b0970643e"

  url "https://dl.audiorelay.net/setups/macos/AudioRelay-#{version}.dmg"
  name "AudioRelay"
  desc "Stream audio between your devices"
  homepage "https://www.audiorelay.net/"

  livecheck do
    url "https://api.audiorelay.net/Downloads"
    strategy :page_match do |page|
      JSON.parse(page)["macOs"]["version"]
    end
  end

  auto_updates true
  depends_on cask: "blackhole-2ch"

  app "AudioRelay.app"

  zap trash: [
    "~/Library/Application Support/AudioRelay",
    "~/Library/Logs/AudioRelay",
    "~/Library/Preferences/com.azefsw.audioconnect.plist",
  ]
end
