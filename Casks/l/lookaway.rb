cask "lookaway" do
  version "2.4.8"
  sha256 "9ae63225261047d3b8620c1b4bfd34eca07b60ffbd006d45eabca9a922534f97"

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
