cask "keysmith" do
  version "1.5.1"
  sha256 "0f4aaff25f0cc9e278d206bb1b9cb40fbf6581c26dadec3d8987df4ef414bafb"

  url "https://keysmith.app/versions/Keysmith-#{version}.dmg"
  appcast "https://www.keysmith.app/versions/appcast.xml"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  depends_on macos: ">= :catalina"

  app "Keysmith.app"
end
