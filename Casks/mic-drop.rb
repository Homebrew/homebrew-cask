cask "mic-drop" do
  version "1.3.1"
  sha256 "22ea299727325830b71b2316e8421f092323403301e4ab632174b66989c56409"

  url "https://getmicdrop.com/downloads/Mic%20Drop%20#{version}.zip"
  appcast "https://getmicdrop.com/downloads/appcast.xml"
  name "Mic Drop"
  desc "Quickly mute your microphone with a global shortcut or menu bar control"
  homepage "https://getmicdrop.com/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Mic Drop.app"
end
