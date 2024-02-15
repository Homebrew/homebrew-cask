cask "proton-drive" do
  version "1.1.0"
  sha256 "b52d4414439f2ec956e1eb1b9218b7864c5a1611783c3b6f2958a62fbbb9e17e"

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
