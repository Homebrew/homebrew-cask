cask "polymail" do
  version "2.2.6"
  sha256 "7f0545b2a99ab9fa515b6f78437a53226e6e1f788a8ed411e6bbd3fff5c09249"

  url "https://sparkle-updater.polymail.io/macos/builds/Polymail-v#{version}.zip"
  name "Polymail"
  homepage "https://polymail.io/"

  livecheck do
    url "https://sparkle-updater.polymail.io/osx/Polymail-Latest.zip"
    strategy :header_match
  end

  auto_updates true

  app "Polymail.app"
end
