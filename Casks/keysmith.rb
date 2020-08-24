cask "keysmith" do
  version "0.5.22"
  sha256 "97fa32b003eaa99feb423080afeef2ddb520dacac3c642ca402d5b76815edc5a"

  url "https://keysmith.app/versions/Keysmith-#{version}.dmg"
  appcast "https://www.keysmith.app/versions/appcast.xml"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  depends_on macos: ">= :catalina"

  app "Keysmith.app"
end
