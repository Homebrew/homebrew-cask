cask "dockdoor" do
  version "1.39.4"
  sha256 "3ec497dff5b77976f00a1f607e9e79bf2ec4c97d8d6fcb5358d8c0130e96ab16"

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
