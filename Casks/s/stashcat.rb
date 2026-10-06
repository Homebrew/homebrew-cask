cask "stashcat" do
  version "6.55.0"
  sha256 "4fe1269fca1708ae08210edb83978ca88e56dcea971ef8d7f6312e16309db173"

  url "https://stashcat.s3-de-central.profitbricks.com/releases/darwin/stashcat-#{version}-darwin.zip"
  name "Stashcat"
  desc "Secure messenger for organisations"
  homepage "https://stashcat.com/"

  livecheck do
    url "https://cc.edyou.eu/desktop/update?channel=release&version=0.0.1&app_id=null&platform=darwin&product=stashcat"
    strategy :json do |json|
      json["name"]&.[](/stashcat[._-]v?(\d+(?:\.\d+)+)-darwin\.zip/i, 1)
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Stashcat.app"

  zap trash: [
    "~/Library/Application Support/Stashcat",
    "~/Library/Caches/de.heinekingmedia.stashcatdesktopmessenger",
    "~/Library/Caches/de.heinekingmedia.stashcatdesktopmessenger.ShipIt",
    "~/Library/HTTPStorages/de.heinekingmedia.stashcatdesktopmessenger",
    "~/Library/Preferences/de.heinekingmedia.stashcatdesktopmessenger.plist",
    "~/Library/Saved Application State/de.heinekingmedia.stashcatdesktopmessenger.savedState",
  ]
end
