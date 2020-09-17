cask "resilio-sync" do
  version "2.7.2"
  sha256 "be40c064b28284630b47a887923d815256af550acd85722960bafea7c2722c52"

  url "https://download-cdn.resilio.com/#{version}/osx/Resilio-Sync.dmg"
  appcast "https://help.resilio.com/hc/en-us/articles/206216855-Sync-#{version.major}-x-change-log"
  name "Resilio Sync"
  desc "File sync and share software"
  homepage "https://www.resilio.com/"

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
