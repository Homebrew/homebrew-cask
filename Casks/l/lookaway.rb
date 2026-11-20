cask "lookaway" do
  version "2.5.0"
  sha256 "811485f1a6664a6ad03a34565abaa701735dcd905ca83b03a2dfc1a741570cb6"

  url "https://github.com/mysticalbits/lookaway-releases/releases/download/#{version}/LookAway.dmg"
  name "LookAway"
  desc "Break time reminder app"
  homepage "https://lookaway.com/"

  auto_updates true
  depends_on macos: :ventura

  app "LookAway.app"

  uninstall quit: "com.mysticalbits.lookaway"

  zap trash: [
    "~/Library/Application Scripts/D35B5Y6JX8.com.mysticalbits.lookaway.shared",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mysticalbits.lookaway.sfl*",
    "~/Library/Application Support/LookAway",
    "~/Library/Caches/com.mysticalbits.lookaway",
    "~/Library/Caches/SentryCrash/LookAway",
    "~/Library/Group Containers/D35B5Y6JX8.com.mysticalbits.lookaway.shared",
    "~/Library/HTTPStorages/com.mysticalbits.lookaway*",
    "~/Library/Preferences/com.mysticalbits.lookaway.plist",
  ]
end
