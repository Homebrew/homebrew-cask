cask "audiorelay" do
  version "0.27.3"
  sha256 "042055e4b4885b127885c0efdc7f5bdf3589d5e28bc205b959e9000e4193cc77"

  url "https://dl.audiorelay.net/setups/macos/AudioRelay-#{version}.dmg"
  name "AudioRelay"
  desc "Stream audio between your devices"
  homepage "https://www.audiorelay.net/"

  livecheck do
    url "https://api.audiorelay.net/Downloads"
    strategy :json do |json|
      json["macOs"]["version"]
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
