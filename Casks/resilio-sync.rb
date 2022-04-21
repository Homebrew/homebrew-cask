cask "resilio-sync" do
  version "2.7.3"
  sha256 "a5114ff04ca4f3a82079802c1683c1418880ac0a068a743885ca33b349296d6a"

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
