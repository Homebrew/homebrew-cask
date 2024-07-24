cask "dockdoor" do
  version "1.1.4"
  sha256 "f4efa9b1dc8f06228ffe2e6e8ca23fe56cea2e45aa77d864049347a5682899c1"

  url "https://github.com/ejbills/DockDoor/releases/download/v#{version}/DockDoor.dmg"
  name "DockDoor"
  desc "Window peeking utility app"
  homepage "https://github.com/ejbills/DockDoor"

  depends_on macos: ">= :sonoma"

  app "DockDoor.app"

  zap trash: [
    "~/Library/Application Support/DockDoor",
    "~/Library/Preferences/com.ethanbills.DockDoor.plist",
  ]
end
