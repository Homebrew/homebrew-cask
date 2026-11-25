cask "altserver" do
  version "1.8.4"
  sha256 "3bfcf46e9f3d68ba9376325bb40f0b5e04fb37d8096be5cd8c618cf1cadae42e"

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
  depends_on macos: :monterey

  app "AltServer.app"

  uninstall quit: "com.rileytestut.AltServer"

  zap trash: [
    "~/Library/Application Scripts/com.rileytestut.AltServer-LaunchAtLoginHelper",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.rileytestut.altserver.sfl*",
    "~/Library/Application Support/com.rileytestut.AltServer",
    "~/Library/Caches/com.rileytestut.AltServer",
    "~/Library/Containers/com.rileytestut.AltServer-LaunchAtLoginHelper",
    "~/Library/Cookies/com.rileytestut.AltServer.binarycookies",
    "~/Library/HTTPStorages/com.rileytestut.AltServer",
    "~/Library/Preferences/com.rileytestut.AltServer.plist",
  ]
end
