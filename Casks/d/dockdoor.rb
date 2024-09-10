cask "dockdoor" do
  version "1.2.6"
  sha256 "9314ececb062a8d427bf3d7e4b391c4118b7ae20b20686bc9dd6ef0739eddb75"

  url "https://github.com/ejbills/DockDoor/releases/download/v#{version}/DockDoor.dmg"
  name "DockDoor"
  desc "Window peeking utility app"
  homepage "https://github.com/ejbills/DockDoor"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "DockDoor.app"

  zap trash: [
    "~/Library/Application Support/DockDoor",
    "~/Library/Preferences/com.ethanbills.DockDoor.plist",
  ]
end
