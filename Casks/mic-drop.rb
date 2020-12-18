cask "mic-drop" do
  version "1.3.4"
  sha256 "50cdf68234bb9833a2a6db011954f0b5a86c47fca52a19f6e823debac5372bef"

  url "https://getmicdrop.com/downloads/Mic%20Drop%20#{version}.zip"
  appcast "https://getmicdrop.com/downloads/appcast.xml"
  name "Mic Drop"
  desc "Quickly mute your microphone with a global shortcut or menu bar control"
  homepage "https://getmicdrop.com/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Mic Drop.app"
end
