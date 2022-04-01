cask "resilio-sync" do
  version "2.7.2"
  sha256 "2c9ce0875bdf34fc8ea831760f42afd7c4a663286bc22bcbbbbf5ecba777d07e"

  url "https://download-cdn.resilio.com/#{version}/osx/Resilio-Sync.dmg"
  name "Resilio Sync"
  desc "File sync and share software"
  homepage "https://www.resilio.com/"

  livecheck do
    url "https://download-cdn.resilio.com/stable/osx/version.txt"
    regex(/(\d+(?:\.\d+)*)/i)
  end

  auto_updates true

  app "Resilio Sync.app"

  uninstall quit: "com.resilio.Sync"

  zap trash: [
    "~/Library/Application Scripts/com.resilio.Sync.FinderExtension",
    "~/Library/Application Support/Resilio Sync",
    "~/Library/Caches/com.resilio.Sync",
    "~/Library/Containers/com.resilio.Sync.FinderExtension",
    "~/Library/Group Containers/group.com.resilio.Sync",
    "~/Library/Preferences/com.resilio.Sync.plist",
  ]
end
