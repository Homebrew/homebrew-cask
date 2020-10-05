cask "keysmith" do
  version "1.2.0"
  sha256 "d7e889fb0e45b99c115510587eadee22f0b6b3c8efc536a25dc47749445eeb51"

  url "https://keysmith.app/versions/Keysmith-#{version}.dmg"
  appcast "https://www.keysmith.app/versions/appcast.xml"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  depends_on macos: ">= :catalina"

  app "Keysmith.app"
end
