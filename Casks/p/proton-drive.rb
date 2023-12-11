cask "proton-drive" do
  version "1.0.6"
  sha256 "aaa7925b8e27c782c9b70b66a2ab2301b2df136c8a348f6c3b111c41699ec003"

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
