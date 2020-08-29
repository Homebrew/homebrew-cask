cask "keysmith" do
  version "1.0.1"
  sha256 "a1c5ac590da2940073a9ec8779213a8758efd82e39ddd8d983d2414adb0fd2c7"

  url "https://keysmith.app/versions/Keysmith-#{version}.dmg"
  appcast "https://www.keysmith.app/versions/appcast.xml"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  depends_on macos: ">= :catalina"

  app "Keysmith.app"
end
