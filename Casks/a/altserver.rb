cask "altserver" do
  version "1.8.3"
  sha256 "29d362cc63a3d00bd59daded8fbd05181bc36ce69c5c4ec3809660b7f62a4910"

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
