cask "mic-drop" do
  version "1.3.6,1306"
  sha256 "8687b90e0d70d7147cdb93cacc27c834bb4b29610c650f4b0aab82a9d357ec57"

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
