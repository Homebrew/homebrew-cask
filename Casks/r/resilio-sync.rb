cask "resilio-sync" do
  version "3.0.0.1409"
  sha256 :no_check

  url "https://download-cdn.resilio.com/stable/mac/osx/0/Resilio-Sync.dmg"
  name "Resilio Sync"
  desc "File sync and share software"
  homepage "https://www.resilio.com/"

  livecheck do
    url "https://syncapp.zendesk.com/api/v2/help_center/en-us/articles/31386579044755"
    regex(/u003ev?(\d+(?:\.\d+)+)[\\ "<]/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
