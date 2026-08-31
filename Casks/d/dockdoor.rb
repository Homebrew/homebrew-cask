cask "dockdoor" do
  version "1.39.5"
  sha256 "2c3c06027f2a2e74375d1c4c95d2133b6bf7e88843cc7026c4c40d5e84c56d40"

  url "https://github.com/ejbills/DockDoor/releases/download/#{version}/DockDoor.dmg"
  name "DockDoor"
  desc "Window peeking utility app"
  homepage "https://dockdoor.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "DockDoor.app"

  zap trash: [
    "~/Library/Application Support/DockDoor",
    "~/Library/Caches/com.ethanbills.DockDoor",
    "~/Library/HTTPStorages/com.ethanbills.DockDoor",
    "~/Library/Preferences/com.ethanbills.DockDoor.plist",
  ]
end
