cask "keysmith" do
  version "1.8.2"
  sha256 "1628e42d95c049bf7c0a309ce2812c6282025a6fd6b932b341f25416c77eeb55"

  url "https://keysmith.app/versions/Keysmith-#{version}.dmg"
  appcast "https://www.keysmith.app/versions/appcast.xml"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  depends_on macos: ">= :catalina"

  app "Keysmith.app"
end
