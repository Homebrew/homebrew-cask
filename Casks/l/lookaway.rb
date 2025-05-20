cask "lookaway" do
  version "1.12.3"
  sha256 "b05ed91666158ad993210ac1c3591b2df966ff5d15c1ed7778533ba14b3d6cd1"

  url "https://github.com/mysticalbits/lookaway-releases/releases/download/#{version}/LookAway.dmg",
      verified: "github.com/mysticalbits/lookaway-releases/"
  name "LookAway"
  desc "Break time reminder app"
  homepage "https://lookaway.app/"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "LookAway.app"

  uninstall quit: "com.mysticalbits.lookaway"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mysticalbits.lookaway.sfl*",
    "~/Library/Application Support/LookAway",
    "~/Library/Caches/SentryCrash/LookAway",
    "~/Library/Preferences/com.mysticalbits.lookaway.plist",
  ]
end
