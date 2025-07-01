cask "proton-drive" do
  version "2.6.0"
  sha256 "f3b163900603f6f6e30d417275774c8f7ef3da027b754b6c6905bfc3f2861893"

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
