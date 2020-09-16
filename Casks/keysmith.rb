cask "keysmith" do
  version "1.0.7"
  sha256 "142ea572e5b8b4f0128ce83901d2631dd9d1a1b990c41c3302c2c8f9cf830624"

  url "https://keysmith.app/versions/Keysmith-#{version}.dmg"
  appcast "https://www.keysmith.app/versions/appcast.xml"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  depends_on macos: ">= :catalina"

  app "Keysmith.app"
end
