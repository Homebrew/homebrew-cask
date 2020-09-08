cask "keysmith" do
  version "1.0.6"
  sha256 "304e233de5728583abaf249ae62e7c1d7063517eb58a1e8eeb70d156a60d5664"

  url "https://keysmith.app/versions/Keysmith-#{version}.dmg"
  appcast "https://www.keysmith.app/versions/appcast.xml"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  depends_on macos: ">= :catalina"

  app "Keysmith.app"
end
