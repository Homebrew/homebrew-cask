cask "dockdoor" do
  version "1.40.7"
  sha256 "42f563aa9d335017e7c46bb4c3084a0665e3569baca135f8a22f5a6aba42dcea"

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
