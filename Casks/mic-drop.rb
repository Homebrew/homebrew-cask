cask "mic-drop" do
  version "1.1.6"
  sha256 "e7d318ac68c2d394623e8507ba8d8a50cdfdce50c3667ce2709e5c3d09a0775b"

  url "https://getmicdrop.com/downloads/Mic%20Drop%20#{version}.zip"
  appcast "https://getmicdrop.com/downloads/appcast.xml"
  name "Mic Drop"
  desc "Quickly mute your microphone with a global shortcut or menu bar control"
  homepage "https://getmicdrop.com/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Mic Drop.app"
end
