cask "mic-drop" do
  version "1.3.5,1305"
  sha256 "81ebeb77f42fbd5ddbb19ed69443f05d68b9217a13c2383fafcb542b011dd8f6"

  url "https://getmicdrop.com/downloads/Mic%20Drop%20#{version.before_comma}.zip"
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
end
