cask "altserver" do
  version "1.7.5"
  sha256 "56ed306213da3e64967664927856f75d4dd1d0e4459d1534f855e79984c4715c"

  url "https://cdn.altstore.io/file/altstore/altserver/#{version.dots_to_underscores}.zip"
  name "AltServer"
  desc "iOS App Store alternative"
  homepage "https://altstore.io/"

  # Older items in the Sparkle feed may have a newer pubDate, so it's necessary
  # to work with all of the items in the feed (not just the newest one).
  livecheck do
    url "https://altstore.io/altserver/sparkle-macos.xml"
    strategy :sparkle do |items|
      items.map(&:short_version)
    end
  end

  auto_updates true
  depends_on :macos

  app "AltServer.app"

  uninstall quit: "com.rileytestut.AltServer"

  zap trash: [
    "~/Library/Application Scripts/com.rileytestut.AltServer-LaunchAtLoginHelper",
    "~/Library/Application Support/com.rileytestut.AltServer",
    "~/Library/Caches/com.rileytestut.AltServer",
    "~/Library/Containers/com.rileytestut.AltServer-LaunchAtLoginHelper",
    "~/Library/Cookies/com.rileytestut.AltServer.binarycookies",
    "~/Library/HTTPStorages/com.rileytestut.AltServer",
    "~/Library/Preferences/com.rileytestut.AltServer.plist",
  ]
end
