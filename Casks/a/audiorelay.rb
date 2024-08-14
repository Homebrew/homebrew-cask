cask "audiorelay" do
  arch arm: "-aarch64"
  livecheck_arch = on_arch_conditional arm: "Aarch64"

  version "0.27.5"
  sha256 arm:   "858f25bf5d6a9057349e70bb0472919d687d42ed158f07f468682dd6066ce20d",
         intel: "3156111b07a7a6e7562e1ebf9c83ed69205a301501e2a1a37111cb6361737db5"

  url "https://dl.audiorelay.net/setups/macos/AudioRelay-#{version}#{arch}.dmg"
  name "AudioRelay"
  desc "Stream audio between your devices"
  homepage "https://www.audiorelay.net/"

  livecheck do
    url "https://api.audiorelay.net/downloads"
    strategy :json do |json|
      json.dig("macOs#{livecheck_arch}", "version")
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
end
