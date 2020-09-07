cask "keysmith" do
  version "1.0.5"
  sha256 "f12e9266ffcb38efbea717b8557d6276ccf74598c31910225103d13a6796d398"

  url "https://keysmith.app/versions/Keysmith-#{version}.dmg"
  appcast "https://www.keysmith.app/versions/appcast.xml"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  depends_on macos: ">= :catalina"

  app "Keysmith.app"
end
