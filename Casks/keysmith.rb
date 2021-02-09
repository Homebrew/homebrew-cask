cask "keysmith" do
  version "1.10.0"
  sha256 "3d5ca45ae160a47221663555bb0b654f6b0a1f026c320c3c959af03f359bea49"

  url "https://keysmith.app/versions/Keysmith-#{version}.dmg"
  appcast "https://www.keysmith.app/versions/appcast.xml"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  depends_on macos: ">= :catalina"

  app "Keysmith.app"
end
