cask "dockdoor" do
  version "1.3.2"
  sha256 "8e3b55755e0a2b88605cfd050a3d450b6e936f3aa78911bf4b303f0fdf0d39d2"

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
