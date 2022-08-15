cask "polymail" do
  arch arm: "-arm64"

  version "2.2.6"

  on_intel do
    sha256 "7f0545b2a99ab9fa515b6f78437a53226e6e1f788a8ed411e6bbd3fff5c09249"
  end
  on_arm do
    sha256 "e5d7ddf964e817ca604612d85ffe26381eb9d3f73962b40af32b5ef071833a2b"
  end

  url "https://sparkle-updater.polymail.io/macos#{arch}/builds/Polymail-v#{version}.zip"
  name "Polymail"
  desc "Email productivity application"
  homepage "https://polymail.io/"

  livecheck do
    url "https://sparkle-updater.polymail.io/macos#{arch}/Polymail-Latest.zip"
    strategy :header_match
  end

  auto_updates true

  app "Polymail.app"
end
