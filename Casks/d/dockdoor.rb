cask "dockdoor" do
  version "1.39.2"
  sha256 "58bc130dce796723812395b27199c4ef8a27ae8b78a46463e932f3fe2f00f228"

  url "https://github.com/ejbills/DockDoor/releases/download/#{version}/DockDoor.dmg",
      verified: "github.com/ejbills/DockDoor/"
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
