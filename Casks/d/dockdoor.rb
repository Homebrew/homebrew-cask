cask "dockdoor" do
  version "1.40.0"
  sha256 "7d05e25a68ff9d9ff8d11a05c4e9fe9be42a56ae3428bfc0e4b55fc1938f90f0"

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
