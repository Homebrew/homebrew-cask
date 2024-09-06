cask "lookaway" do
  version "1.7.3"
  sha256 "12847b703014c56055bd2127148b52659058968341fac4dc72cb5d3db843a7b8"

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
