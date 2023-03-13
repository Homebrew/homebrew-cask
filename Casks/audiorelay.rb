cask "audiorelay" do
  version "0.26.3"
  sha256 "51b5428379feff82290e0ccd3b1373bacfad60ccc151549fcc991898079bc7a1"

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
