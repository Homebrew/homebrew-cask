cask "mic-drop" do
  version "1.3.3"
  sha256 "0190df305ccf7575c94a3113507c933cce0c11073636cf8c59de006b87fd9624"

  url "https://getmicdrop.com/downloads/Mic%20Drop%20#{version}.zip"
  appcast "https://getmicdrop.com/downloads/appcast.xml"
  name "Mic Drop"
  desc "Quickly mute your microphone with a global shortcut or menu bar control"
  homepage "https://getmicdrop.com/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Mic Drop.app"
end
