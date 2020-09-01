cask "keysmith" do
  version "1.0.4"
  sha256 "9be8974c4a2c7b21e714b1a3647205cf1ea02de1804b524615841e78115b795e"

  url "https://keysmith.app/versions/Keysmith-#{version}.dmg"
  appcast "https://www.keysmith.app/versions/appcast.xml"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  depends_on macos: ">= :catalina"

  app "Keysmith.app"
end
