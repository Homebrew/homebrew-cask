cask "lookaway" do
  version "2.4.9"
  sha256 "f6121cc0745547a3a5de2c5313fab632b0cc84b2d72669182a390a67baec4485"

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
