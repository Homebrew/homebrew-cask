cask "dockdoor" do
  version "1.2.3"
  sha256 "d122d35609893bb734a18030e1a7b6ac25f84fbb0c63746df6addebf71f5bad6"

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
