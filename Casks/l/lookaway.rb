cask "lookaway" do
  version "2.4.5"
  sha256 "ce0f31434ac88a8374af82c2ec91d1f49d46293bbe69bdecb064075f5f9d3229"

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
