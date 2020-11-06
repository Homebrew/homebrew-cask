cask "keysmith" do
  version "1.4.0"
  sha256 "415350db2daaccbc960305b638467ece70dcfcb6eac088009629c8f5e767c64d"

  url "https://keysmith.app/versions/Keysmith-#{version}.dmg"
  appcast "https://www.keysmith.app/versions/appcast.xml"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  depends_on macos: ">= :catalina"

  app "Keysmith.app"
end
