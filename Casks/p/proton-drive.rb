cask "proton-drive" do
  version "1.0.1"
  sha256 "3ad95872fc7d45b2e2fd8e53a3614b1ce324a78ad269a52e400d5c02e3e07ad3"

  url "https://proton.me/download/drive/macos/ProtonDrive-#{version}.dmg"
  name "Proton Drive"
  desc "Client for Proton Drive"
  homepage "https://proton.me/drive"

  livecheck do
    url "https://proton.me/download/drive/macos/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Proton Drive.app"

  zap trash: [
    "~/Library/Application Scripts/ch.protonmail.drive*",
    "~/Library/Containers/ch.protonmail.drive*",
    "~/Library/Group Containers/group.ch.protonmail.protondrive",
  ]
end
