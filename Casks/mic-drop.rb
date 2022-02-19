cask "mic-drop" do
  version "1.4.2,1420"
  sha256 "7dce65af477da70ede99113a04d9edb180256e80f866b28afe4fedd89312ff99"

  url "https://getmicdrop.com/downloads/Mic%20Drop%20#{version.csv.first}.zip"
  name "Mic Drop"
  desc "Quickly mute your microphone with a global shortcut or menu bar control"
  homepage "https://getmicdrop.com/"

  livecheck do
    url "https://getmicdrop.com/downloads/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Mic Drop.app"

  zap trash: [
    "~/Library/Application Support/Mic Drop",
    "~/Library/Application Support/com.octopusthink.Mic-Drop",
    "~/Library/Caches/com.octopusthink.Mic-Drop",
    "~/Library/Preferences/com.octopusthink.Mic-Drop.plist",
  ]
end
