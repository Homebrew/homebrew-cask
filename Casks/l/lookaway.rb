cask "lookaway" do
  version "2.4.6"
  sha256 "77a80b4b11e30417c4fb7922920caed752a69c0ee7ab166c5c66d2c4a19769f5"

  url "https://github.com/mysticalbits/lookaway-releases/releases/download/#{version}/LookAway.dmg"
  name "LookAway"
  desc "Break time reminder app"
  homepage "https://lookaway.com/"

  auto_updates true
  depends_on macos: :ventura

  app "LookAway.app"

  uninstall quit: "com.mysticalbits.lookaway"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mysticalbits.lookaway.sfl*",
    "~/Library/Application Support/LookAway",
    "~/Library/Caches/SentryCrash/LookAway",
    "~/Library/Preferences/com.mysticalbits.lookaway.plist",
  ]
end
