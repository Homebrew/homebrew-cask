cask "stashcat" do
  version "6.59.0"
  sha256 "6338c132d34fe3238e4ffb0664fe186d6bc5aaa20df53040d58943889da7938f"

  url "https://stashcat.s3-de-central.profitbricks.com/releases/darwin/stashcat-#{version}-darwin.zip"
  name "Stashcat"
  desc "Secure messenger for organisations"
  homepage "https://stashcat.com/"

  livecheck do
    url "https://cc.edyou.eu/desktop/update?channel=release&version=0.0.1&app_id=null&platform=darwin&product=stashcat"
    regex(/stashcat[._-]v?(\d+(?:\.\d+)+)-darwin\.zip/i)
    strategy :json do |json, regex|
      json["name"]&.[](regex, 1)
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Stashcat.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.heinekingmedia.stashcatdesktopmessenger.sfl*",
    "~/Library/Application Support/Stashcat",
    "~/Library/Caches/de.heinekingmedia.stashcatdesktopmessenger",
    "~/Library/Caches/de.heinekingmedia.stashcatdesktopmessenger.ShipIt",
    "~/Library/HTTPStorages/de.heinekingmedia.stashcatdesktopmessenger",
    "~/Library/Preferences/de.heinekingmedia.stashcatdesktopmessenger.plist",
    "~/Library/Saved Application State/de.heinekingmedia.stashcatdesktopmessenger.savedState",
  ]
end
