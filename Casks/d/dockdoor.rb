cask "dockdoor" do
  version "1.23.1"
  sha256 "f51a0edc6014fdb8055ffbf775192143e6d08ce080f5d42b6bb95c06b6dad503"

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
  depends_on macos: ">= :ventura"

  app "DockDoor.app"

  zap trash: [
    "~/Library/Application Support/DockDoor",
    "~/Library/Caches/com.ethanbills.DockDoor",
    "~/Library/HTTPStorages/com.ethanbills.DockDoor",
    "~/Library/Preferences/com.ethanbills.DockDoor.plist",
  ]
end
