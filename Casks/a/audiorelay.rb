cask "audiorelay" do
  version "0.27.5"
  sha256 "3156111b07a7a6e7562e1ebf9c83ed69205a301501e2a1a37111cb6361737db5"

  url "https://dl.audiorelay.net/setups/macos/AudioRelay-#{version}.dmg"
  name "AudioRelay"
  desc "Stream audio between your devices"
  homepage "https://www.audiorelay.net/"

  livecheck do
    url "https://api.audiorelay.net/Downloads"
    strategy :json do |json|
      json.dig("macOs", "version")
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "AudioRelay.app"

  zap trash: [
    "~/Library/Application Support/AudioRelay",
    "~/Library/Logs/AudioRelay",
    "~/Library/Preferences/com.azefsw.audioconnect.plist",
  ]

  caveats do
    requires_rosetta
  end
end
