cask "mic-drop" do
  version "1.2.0"
  sha256 "938b5838e68c1477f9f605c12ca9d35099fc8a9fb24f9581c2c43c1c3286affb"

  url "https://getmicdrop.com/downloads/Mic%20Drop%20#{version}.zip"
  appcast "https://getmicdrop.com/downloads/appcast.xml"
  name "Mic Drop"
  desc "Quickly mute your microphone with a global shortcut or menu bar control"
  homepage "https://getmicdrop.com/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Mic Drop.app"
end
