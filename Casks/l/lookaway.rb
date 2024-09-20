cask "lookaway" do
  version "1.7.6"
  sha256 "2d7156cfb701283ab84691af0ce5fdbdae586f5b39b6e2b1932c69e2e6d9bb4e"

  url "https://github.com/mysticalbits/lookaway-releases/releases/download/#{version}/LookAway.dmg",
      verified: "github.com/mysticalbits/lookaway-releases/"
  name "LookAway"
  desc "Break time reminder app"
  homepage "https://lookaway.app/"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "LookAway.app"

  uninstall quit: "com.mysticalbits.lookaway"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mysticalbits.lookaway.sfl*",
    "~/Library/Application Support/LookAway",
    "~/Library/Caches/SentryCrash/LookAway",
    "~/Library/Preferences/com.mysticalbits.lookaway.plist",
  ]
end
