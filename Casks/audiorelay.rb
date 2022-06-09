cask "audiorelay" do
  version "0.25.5"
  sha256 "c27dae927ee98c99560b477f507ac9ede290781f35f8e5a512dda9c37542a526"

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
