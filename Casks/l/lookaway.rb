cask "lookaway" do
  version "2.4.11"
  sha256 "2a654fa6d52b90be5d49244f3b7ccba59f02a5954f35d2aa9703a09bfaa41367"

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
