cask "keysmith" do
  version "1.13.0"
  sha256 "0e7d6ee1e02c79299b937d54a6a45d1c8c408e7b8a21d731dabb8f7337fd4fdd"

  url "https://keysmith.app/versions/Keysmith-#{version}.dmg"
  appcast "https://www.keysmith.app/versions/appcast.xml"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  depends_on macos: ">= :catalina"

  app "Keysmith.app"
end
