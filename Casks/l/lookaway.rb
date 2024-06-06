cask "lookaway" do
  version "1.5.4"
  sha256 "ef7dfee247b55933570b78991c7ba42bf3c2443c7a61b9fde08abfbb3f040410"

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
